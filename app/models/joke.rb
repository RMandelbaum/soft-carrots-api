class Joke < ApplicationRecord
  validates :description, :author, :category,  presence: true

end
