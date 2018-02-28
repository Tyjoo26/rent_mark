class UsersController < ApplicationController

  def index
    @users = User.where(role: "renter")
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :unit_id, :password)
    end

    def set_user
      @user = User.find(params[:id])
    end

end
