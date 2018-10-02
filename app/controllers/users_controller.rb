class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @users = User.where.not(:id => current_user.id)
  end

  def new
    # authorize! :manage, User
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # authorize! :manage, User
    # @user.save
    if @user.save(:validate => false)
      redirect_to users_path
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :lastname)
  end
end
