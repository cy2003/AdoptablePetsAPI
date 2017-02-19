class AdopterSerializer < ActiveModel::Serializer
  attributes :id
  has_many :pets 
end
