class BookStorage < ActiveRecord::Base
  belongs_to :storage
  belongs_to :book
  validates :book_id, :storage_id, :amount, presence: true
end
