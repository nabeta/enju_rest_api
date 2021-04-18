class Manifestation < ApplicationRecord
  has_many :isbn_record_and_manifestations
  has_many :isbn_records, through: :isbn_record_and_manifestations

  attr_accessor :isbn
end
