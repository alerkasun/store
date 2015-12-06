class CreateStorages < ActiveRecord::Migration
  def change
    create_table :storages do |t|
      t.string :name
      t.string :location
      t.integer :area
      t.integer :phone

      t.timestamps null: false
    end
  end
end
