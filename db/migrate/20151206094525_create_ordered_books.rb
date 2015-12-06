class CreateOrderedBooks < ActiveRecord::Migration
  def change
    create_table :ordered_books do |t|
      t.integer :book_id
      t.integer :order_id
      t.integer :quantity
      t.decimal :price, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
