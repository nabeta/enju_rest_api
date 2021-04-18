class IsbnRecordAndManifestation < ApplicationRecord
  belongs_to :isbn_record
  belongs_to :manifestation
end
