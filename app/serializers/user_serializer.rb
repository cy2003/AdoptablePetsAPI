class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :rescue, :adopter
end
