class MyCommentsController < ApplicationController
  def index
  	    @comments = current_user.comments.all
  end
end
