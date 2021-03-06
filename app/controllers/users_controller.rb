class UsersController < ApplicationController
  before_action :set_user, except: [:create, :new]
  before_action :user_signed_in?, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    end
  end
    
  def show
  end

    private
    def user_params
      params.require(:user).permit(:email, :password)
    end

    def set_user
      @user = User.find(params[:id])
    end

end
