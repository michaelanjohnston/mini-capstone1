class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :price, :tax, :total, :is_discounted?, :description, :current_user

  belongs_to :supplier
  has_many :images
end
