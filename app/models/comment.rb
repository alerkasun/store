class Comment < ActiveRecord::Base
  validates :book_id, presence: true
  validates :description, presence: true
end
