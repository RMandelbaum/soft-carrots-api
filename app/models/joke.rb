class Joke < ApplicationRecord
  validates :description, :author, :category, presence: true
  has_many :comments
end
