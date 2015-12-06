class CreateBookStorages < ActiveRecord::Migration
  def change
    create_table :book_storages do |t|
      t.integer :book_id
      t.integer :storage_id
      t.integer :amount

      t.timestamps null: false
    end
  end
end
