class Pet < ActiveRecord::Base
  has_many :adopters
  belongs_to :rescue
  has_many :posts
end
