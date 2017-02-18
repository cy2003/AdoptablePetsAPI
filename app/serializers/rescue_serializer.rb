class RescueSerializer < ActiveModel::Serializer
  attributes :id, :organization_name, :street_address, :city, :state, :zipcode, :website, :phone 
  has_many :pets
end
