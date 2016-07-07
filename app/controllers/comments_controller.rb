class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.save

    if request.xhr?
      render :json => @comment
    else
      redirect_to comments_path
    end
  end

  private

  def comment_params
    params[:comment].permit(:name, :email, :text, :post_id)
  end
end