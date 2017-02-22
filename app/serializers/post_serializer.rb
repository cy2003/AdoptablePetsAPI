class PostSerializer < ActiveModel::Serializer
  attributes :id, :description, :image, :date, :pet_id
end
