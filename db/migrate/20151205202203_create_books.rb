class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :page_count
      t.integer :publication_year
      t.integer :author
      t.decimal :price, precision: 8, scale: 2
      t.string :cover
      t.string :title

      t.timestamps null: false
    end
  end
end
