class CommentsController < ApplicationController
  before_action :authenticate_user!
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
    @comment = Comment.find(params[:id])
    @c_id = @comment.content_id
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(comment_params)
      redirect_to user_my_comments_index_path(current_user)
    else
      redirect_to user_my_comments_index_path(current_user)
    end
    
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy!
      redirect_to user_my_comments_index_path(current_user)
    else
      redirect_to user_my_comments_index_path(current_user)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
