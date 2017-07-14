class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params) # can use this once user_parms is finished.
    # @new_user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Sucessfully created"
      redirect_to @user
    else
      render :new # When will it ever go into this case?
    end
    # redirect_to :show
    # render plain: params[:user].inspect
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :password)
  end
end