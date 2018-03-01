class SessionsController < ApplicationController

  def new

  end

  def create
    if request.env["omniauth.auth"].nil?
      @user = User.find_by(email: params[:session][:email])
      verify_user
    else
      @user = User.update_or_create(request.env["omniauth.auth"])
      session[:id] = @user.id
      redirect_to dashboard_path
    end
  end


  def destroy
    session.clear
    redirect_to root_path
  end

  private

    def verify_user
      if @user.try(:authenticate, params[:session][:password])
        login_successful
      else
        flash[:alert] = "Login Unsuccessful"
        redirect_to login_path
      end
    end

    def login_successful
      session[:id] = @user.id
      if current_user.manager?
        redirect_to dashboard_path
      else
        redirect_to dashboard_path
      end
    end


end
