class Order < ActiveRecord::Base
  has_many :ordered_books, dependent: :destroy
  accepts_nested_attributes_for :ordered_books
end
