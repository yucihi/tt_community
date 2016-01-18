class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @content = Content.find(params[:content_id])
    @comment = @content.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to user_content_path(@content.user_id,@content.id)
    else
      redirect_to user_content_path(@content.user_id,@content.id)
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
