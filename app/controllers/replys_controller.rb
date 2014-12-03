class ReplysController < ApplicationController
  def index
    @gsi = Gsi.find(params[:gsi_id])
    @comment = Comment.find(params[:comment_id])
    @replys = Reply.where(comment_id: @comment.id)
  end

  def show
  end

  def create
    @gsi = Gsi.find(params[:gsi_id])
    @comment = Comment.find(params[:comment_id])
    @new_reply = Reply.new(reply_params)
    @new_reply.update_attributes(:comment_id => @comment.id)
    if @new_reply.save
      redirect_to(gsi_comment_replys_path(@gsi, @comment))
    else
      flash[:error] = @new_reply.errors.full_messages.to_sentence
      redirect_to(gsi_comment_replys_path(@gsi, @comment))
    end
  end

  def new
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private 

  def reply_params
    params.require(:reply).permit(:content)
  end

end
