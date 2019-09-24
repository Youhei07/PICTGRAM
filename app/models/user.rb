class User < ApplicationRecord
  validates :name, presence: true,length: { maximum: 15 }
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, {presence: true, format: { with: VALID_EMAIL_REGEX }}
  validates :password, presence: true, length: { in:8..32 }, format:/\A(?=.*?[a-z])(?=.*?\d[a-z\d])[a-z\d]{8,32}+\z/i
  
  has_secure_password validations:true
end