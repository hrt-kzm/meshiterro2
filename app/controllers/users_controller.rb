class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) #urlに記載されているidのレコードをUserモデルに取得し、変数に格納する
    @post_images = @user.post_images　#特定のユーザ(@user)に関連付けられた投稿全て(.post_image)を取得し、変数に渡す
  end

  def edit
  end
end
