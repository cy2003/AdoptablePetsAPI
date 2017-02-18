class FollowSerializer < ActiveModel::Serializer
  attributes :id, :pet_id, :adopter_id
end
