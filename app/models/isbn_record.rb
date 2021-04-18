class IsbnRecord < ApplicationRecord
  has_many :isbn_record_and_manifestations
  has_many :manifestations, through: :isbn_record_and_manifestations

  validates :body, uniqueness: true
end
