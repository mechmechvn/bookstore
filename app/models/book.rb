class Book < ApplicationRecord
  belongs_to :author
  validates :name, length: {minimum: 6}, presence: true
  end
