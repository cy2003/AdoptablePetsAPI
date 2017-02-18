class PetSerializer < ActiveModel::Serializer
  attributes :id, :pet_type, :name, :sex, :breed, :age, :bio, :rescue, :image, :picture_url

  def picture_url
    "http://localhost:3000/" + "images/#{object.image}" 
  end

end
