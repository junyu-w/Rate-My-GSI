class CommentsController < ApplicationController


  def index
    @gsi = Gsi.find(params[:gsi_id])
    @comments = Comment.where(gsi_id: @gsi.id)
    @new_comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:id])
  end

  
  def create
    @gsi = Gsi.find(params[:gsi_id])
    @new_comment = Comment.new(comment_params)
    @new_comment.update_attributes(:gsi_id => @gsi.id)
    respond_to do |format|
      if @new_comment.save
        #redirect_to(comment_path(@new_comment))
        format.html { redirect_to(gsi_comments_path(@gsi)) }
        format.js
      else
        flash[:error] = @new_comment.errors.full_messages.to_sentence
        redirect_to(gsi_comments_path(gsi))
      end
    end
  end

  def new
  end

  def destroy
  end

  def edite
  end

  def update
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :content)
  end

end
