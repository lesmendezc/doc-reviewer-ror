class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :authorize_admin, only: [:create, :update]

  def index
    @users = User.all
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

  def edit
    @usuario = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  private
  def authorize_admin
    return unless !current_user.admin? && !current_user.present?
    redirect_to root_path, alert: 'Solo Admins!'
  end

  def user_params
    params.require(:user).permit(:name, :lastname, :username, :career, :phone, :role, :email, :password, :admin_role, :tutor_role, :relator_role, :professor_role)
  end
end
