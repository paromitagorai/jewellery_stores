class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :desc
      t.decimal :price
      t.string :category_id
      t.integer :user_id, null: false
      add_foreign_key :products, :users
      add_foreign_key :products, :categories
      t.timestamps
      
    end
  end
end
