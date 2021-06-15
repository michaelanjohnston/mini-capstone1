class SupplierController < ApplicationController
  def all_supplier_method
    all_my_suppliers = Supplier.all
    render json: all_my_suppliers.as_json
  end

  def index
    products = Supplier.all
    render json: suppliers.as_json
  end

  def one_supplier_method
    one_product = Supplier.find_by(id: params["id"])
    render json: one_.as_json

  end 
  def create
    product = Supplier.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    product.save
    render json: product.as_json
  end

  def show
    product = Supplier.find_by(id: params[:id])
    render json: supplier.as_json
  end

  def update
    supplier = Supplier.find_by(id: params[:id])
    supplier.name = params[:name] || product.name
    supplier.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    product.save
    render json: supplier.as_json
  end

  def destroy
    supplier = Supplier.find_by(id: params[:id])
    supplier.destroy
    render json: { message: "Supplier destroyed successfully!" }
  end
end
