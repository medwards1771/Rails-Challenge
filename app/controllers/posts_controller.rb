class PostsController < ApplicationController
  def index
    @posts = Post.includes(:author).all.order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
    @presenter = {
      :comments => @post.comments,
      :form => {
        :action => comments_path,
        :id => @post.id,
        :csrf_param => request_forgery_protection_token,
        :csrf_token => form_authenticity_token
      }
    }
  end

  def new
    @authors = Author.all
    @post = Post.new
  end

  def create
    @authors = Author.all
    @post = Post.new(post_params)

    if @post.save
      redirect_to(posts_path, notice: 'The post was saved.') and return
    else
      render :new, error: 'The post was not saved.'
    end
  end

  private
  def post_params
    params[:post].permit(:header, :body, :author_id)
  end
end
