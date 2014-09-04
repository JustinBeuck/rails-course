class CommentsController < ApplicationController

  def create
      comment = Comment.new(comment_params)
      comment.save
      redirect_to videos_path + '/' + params[:video_id]
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to root_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to root_path
  end

  private
   def comment_params
    params.require(:comment).permit(:video_id, :content)
   end

end
