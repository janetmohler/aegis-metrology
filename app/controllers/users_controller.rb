class UsersController < ApplicationController
  before_action :authenticate_user!

  def show 
    @user = User.find(params[:id])
    @users = User.all
    @surveys = Survey.all
    @representatives = Representative.all 
  end

  def destroy
    @user = User.find(params[:id]).destroy 
    redirect_to user_path(current_user)
  end

end
