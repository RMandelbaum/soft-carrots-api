class Joke < ApplicationRecord
  validates :description, :author, :category, :img_url, presence: true

end
