class UsersController < ApplicationController

  def show
    @user     = User.find_by_id(current_user.id)
    @rand     = @user.next_idea
    @comment  = Comment.new
  end

  def next
    @user = User.find_by_id(params[:id])
    redirect_to user_path(@user)
  end

end