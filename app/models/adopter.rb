class Adopter < ActiveRecord::Base
  belongs_to :user
  has_many :pets
  has_many :follows
end
