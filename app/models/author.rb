class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  validates :name, presence: true, length: {minimum: 6}
  validates :DoB, date: { before: Proc.new{Time.new(1999)} }

end