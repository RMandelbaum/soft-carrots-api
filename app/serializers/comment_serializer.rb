class CommentSerializer < ActiveModel::Serializer
  attributes :id,
             :description,
             :user,
             :joke_id
end
