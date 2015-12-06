class Book < ActiveRecord::Base
  has_many :ordered_books, dependent: :destroy
  mount_uploader :cover, CoverUploader
  belongs_to :genre
  belongs_to :publisher
  has_and_belongs_to_many :authors
  has_many :book_storages, 
           :dependent => :destroy
  has_many :storages,
           :through => :book_storages

  validates :title, presence: true
  validates :genre, presence: true
  validates :authors, presence: true
  validates :publication_year, numericality: true, allow_nil: true
  validates :page_count, numericality: true, allow_nil: true
  validates :price, :numericality => { :equal_or_greater_than => 0}, allow_nil: true
  validates :publisher, presence: true
  validates_associated :book_storages

  accepts_nested_attributes_for :book_storages,
                                :reject_if => lambda { |a| a[:storage_id].blank? || a[:amount].blank? },
                                :allow_destroy => true
end
