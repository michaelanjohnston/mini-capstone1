class ProductsController < ApplicationController
before_action :authenticate_admin, except: [:index, :show]

  def index
    products = Product.all
    render json: products
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id],)

    if product.save
      Image.create(product_id: product.id, url: params[:image_url])
      render json: product

    else
      render json: { errors: product.errors.full_messages }, status: 422
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description

    if product.save
      render json: product

    else
      render json: { errors: product.errors.full_messages }, status: 422

    end
    
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Product destroyed successfully!" }
  end

end
end
