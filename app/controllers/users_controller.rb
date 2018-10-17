class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :authorize_admin, only: :create

  def index
    @users = User.where.not(:id => current_user.id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  private
  def authorize_admin
    return unless !current_user.admin?
    redirect_to root_path, alert: 'Admins only!'
  end

  def user_params
    params.require(:user).permit(:name, :lastname, :username, :career, :phone, :role, :email, :password)
  end
end
