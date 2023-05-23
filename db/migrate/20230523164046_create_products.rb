class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :brand
      t.boolean :availability
      t.string :specs
      t.references :user, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
