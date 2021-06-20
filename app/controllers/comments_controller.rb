class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params.merge(manage_id: params[:manage_id]))
    if @comment.save
    redirect_to manage_path(params[:manage_id])
    else
      redirect_to manage_path(params[:manage_id])
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
