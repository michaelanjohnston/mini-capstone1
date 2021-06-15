class ImagesController < ApplicationController
  def index
    images = Image.all
    render json: images
  end

  def create
    product = Image.new(
      url: params[:image_url]
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Image destroyed successfully!" }
  end

end

