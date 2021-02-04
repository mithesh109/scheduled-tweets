class User < ApplicationRecord
  has_secure_password

  validates :email, 
    presence: true, 
    format: { with: /\A(.+)@(.+)\z/, message: "is invalid"  },
    uniqueness: { case_sensitive: false },
    length: { minimum: 4, maximum: 254 }    
end
