class ContentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  #helper_method :get_user_name
  def index
    @contents = current_user.contents.all
  end

  def new
    @content = current_user.contents.build
  end

  def create
    @content = current_user.contents.build(content_params)
    if @content.save
      redirect_to user_content_path(current_user,@content)
    else
      redirect_to new_user_content_path
    end
  end

  def show
    @content = Content.find(params[:id])
    @comments = @content.comments.all
    @comment = @content.comments.build
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    if @content.update_attributes(content_params)
      redirect_to user_content_path(current_user,@content)
    else
      redirect_to edit_user_content(@content)
    end

  end

  def destroy
    @content = Content.find(params[:id])
    if @content.destroy!
      redirect_to user_contents_path(current_user,@content)
    else
      redirect_to user_contents_path(current_user,@content)
    end

  end
  private
  def content_params
    params.require(:content).permit(:title, :body, :day, :place)
  end
end
