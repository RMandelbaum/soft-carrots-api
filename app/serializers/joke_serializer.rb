class JokeSerializer < ActiveModel::Serializer
  attributes :id,
             :description,
             :author,
             :category,
             :rating,
             :img_url
end
