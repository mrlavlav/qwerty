class UsersController < ApplicationController
before_action :authenticate_user!
 def show
    @user = User.find(params[:id])

    
  end
  def edit
    @user = current_user
  end
 
 def index
  @users = User.paginate(page: params[:page])
  end
  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :city,:gender,:age,:country,:about_me,
                                   :password_confirmation)
    end
end