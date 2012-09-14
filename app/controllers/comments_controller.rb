class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comment])
    shot = Shot.find(params[:shot_id])
    @comment.shot = shot
    @comment.user_id = current_user.id

    respond_to do |format|
      if @comment.save
        format.html { redirect_to shot, notice: 'Your comment was successfully posted.' }
        format.json { render json: @comment, status: :created, location: @shot }
      else
        format.html { redirect_to shot }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    shot = @comment.shot
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to shot }
      format.json { head :no_content }
    end
  end
end
