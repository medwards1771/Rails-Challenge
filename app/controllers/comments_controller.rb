class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: { comment: @comment }
    else
      render json: {errors: @comment.errors.full_messages}, status: 422
    end
  end

  private

  def comment_params
    params[:comment].permit(:name, :email, :text, :post_id)
  end
end