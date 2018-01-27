class JokeSerializer < ActiveModel::Serializer
  attributes :id,
             :description,
             :author,
             :category,
             :rating,
             :comments,
             :img_url
end
