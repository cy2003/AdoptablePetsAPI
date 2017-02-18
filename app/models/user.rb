class User < ActiveRecord::Base
  has_one :rescue
  has_one :adopter
  has_secure_password
end
