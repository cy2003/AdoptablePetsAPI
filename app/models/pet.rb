class Pet < ActiveRecord::Base
  has_many :adopters
  belongs_to :rescue
end
