class MakeChangesToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :gender, :string
  end
end
