class RemoveGenderFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :gender, :string
  end
end
