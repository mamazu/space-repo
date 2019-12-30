class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:login, :create]

  # Render the login form
  def login
    @error = request.GET[:error]
  end

  def zurueck
    redirect_to '/'
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password]) 
      session[:user_id] = @user.id
      redirect_to :welcome
    else
      redirect_to '/' + :login.to_s + '?error=true'
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to :welcome
  end
end
