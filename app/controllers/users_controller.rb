class UsersController < ApplicationController
  # Create a user for the form to map to
  def new
    @user = User.new
  end

  # Create the user and add it to the database
  def create
    @user = User.create(
      params.require(:user).permit(:username, :password)
    )
    session[:user_id] = @user.id
    redirect_to '/'
  end
end
