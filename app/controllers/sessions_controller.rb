class SessionsController < ApplicationController
  # Render the login form
  def login
    @error = request.GET[:error]
  end

  # Fill the session with the authenticated user
  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password]) 
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/login?error=true'
    end
  end

  # Reset the session
  def logout
    session[:user_id] = nil
    redirect_to '/'
  end
end
