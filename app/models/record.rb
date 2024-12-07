class Record < ApplicationRecord
  validates :field1, presence: true
  validates :field2, presence: true
end