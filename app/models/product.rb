class Product < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }
  belongs_to :supplier
  
  has_many :images 
  has_many :orders
  has_many :category_products

  def images
    Image.where(product_id: id)
  end
  
  def is_discounted?
    if price.to_i < 10
      true
    else
      false
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end
  
end

  #discounted = false
  #discounted = true if price.to_i < 10
  #discounted
