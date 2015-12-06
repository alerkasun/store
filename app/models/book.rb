class Book < ActiveRecord::Base
  has_many :ordered_books, dependent: :destroy
  belongs_to :genre
  has_and_belongs_to_many :authors
end
