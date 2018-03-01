class Manager::UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy, :show]

  def index
    @users = User.where(role: "renter")
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:alert] = "You've created a new tenant!"
      redirect_to manager_users_path
    else
      render :new
    end
  end

  def edit

  end

  def update

    if @user.update(user_params)
      flash[:success] = "You've updated #{@user.first_name}'s profile"
      redirect_to manager_user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    flash[:alert] = "User is removed from the system."
    redirect_to manager_users_path
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :unit_id)
    end

    def set_user
      @user = User.find(params[:id])
    end

end
