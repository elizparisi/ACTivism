class User < ApplicationRecord

  has_many :events
  has_many :groups, through: events

  has_secure_password 
end
