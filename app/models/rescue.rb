class Rescue < ActiveRecord::Base
  belongs_to :user
  has_many :pets
end
