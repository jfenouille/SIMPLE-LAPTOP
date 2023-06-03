class AddFieldToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :renter, :boolean, default: true
  end
end
