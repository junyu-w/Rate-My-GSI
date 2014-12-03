class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @new_comment = Comment.new(comment_params)
    if @new_comment.save
      redirect_to(comment_path(@new_comment))
    else
      flash[:error] = @new_comment.errors.full_messages.to_sentence
      redirect_to(comments_path)
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
    params.require(:comment).permit(:title, :content);
  end

end
