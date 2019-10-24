class UsersController < ApplicationController
  skip_before_action :authenticated, only: [:new, :create]
  
  # def index
  #   @users = User.all
  # end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.valid? 
      @user.save 
      redirect_to @user
    else 
      flash[:error] = @user.errors.full_messages 
      redirect_to register_path 
    end
  end

  def show
    @user = User.find(session[:user_id])
  end

  def edit 
  end

  def update
  end
  
  def destroy
    # @user.destroy
    # redirect_to @users
  end

  private

  # def the_user
  #   @user = User.find(params[:id])
  # end

  def user_params
    params.require(:user).permit(:user_name, :password, :password_confirmation)
  end
end
