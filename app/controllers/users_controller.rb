class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) #urlに記載されているidのレコードをUserモデルに取得し、変数に格納する
    @post_images = @user.post_images #特定のユーザ(@user)に関連付けられた投稿全て(.post_images)を取得し、変数に渡す
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
