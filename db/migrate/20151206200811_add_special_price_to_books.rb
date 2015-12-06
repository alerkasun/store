class AddSpecialPriceToBooks < ActiveRecord::Migration
  def change
    add_column :books, :special_price, :decimal, precision: 8, scale: 2, :default => 0
  end
end
