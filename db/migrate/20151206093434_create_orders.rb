class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :title
      t.integer :phone
      t.string :address
      t.string :pay_type

      t.timestamps null: false
    end
  end
end
