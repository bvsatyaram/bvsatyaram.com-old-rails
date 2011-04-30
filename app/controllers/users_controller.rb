class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :check_admin_access

  def index
    @page_title = "Users"
    @page_heading = "Users"
    @users = User.all
    @new_user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    password = RandomPasswordGenerator.generate
    @user.password = password
    @user.password_confirmation = password

    if @user.save
      @user.reset_authentication_token!
      flash[:notice] = "User has been successfully added"
    else
      flash[:error] = "There was a problem adding the user"
    end

    redirect_to users_path
  end

end
