class User < ApplicationRecord
  # model association
  has_many :todos

  # validations
  validates_presence_of :name, :email, :password_digest
end
