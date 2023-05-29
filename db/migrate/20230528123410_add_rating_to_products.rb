class AddRatingToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :rating, :integer, default: 10, null: false, limit: 1
  end
end
