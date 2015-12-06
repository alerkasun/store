class Book < ActiveRecord::Base
  has_many :ordered_books, dependent: :destroy
  belongs_to :genre
end
