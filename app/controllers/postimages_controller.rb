class PostimagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end

  def create
    @post_image = PostImage.new(postimage_params)
    @post_image.user_id = current_user.id
    @post_image.seva
    redirect_to postimage_path
  end

  def index
  end

  def show
  end

  private

  def postimage_params
    params.require(:postimage).permit(:shop_name, :image, :caption)
  end
end
