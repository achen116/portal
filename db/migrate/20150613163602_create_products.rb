class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string   :title, limit: 100
      t.string   :description
      t.decimal  :price, precision: 15, scale: 2
      t.integer  :user_id
      t.integer  :category_id

      t.timestamps
    end
  end
end
