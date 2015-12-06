class AddAuthorPhotoToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :author_photo, :string
  end
end
