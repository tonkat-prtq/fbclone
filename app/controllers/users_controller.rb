class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params) # ストロングパラメータ設定
    if @user.save

    else
      render 'new'
    end

    def show
      @user = User.find(params[:id])
    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
    # userキーのpermit以下のパラメータのみ受け取るという意味
  end

end
