class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true, uniqueness: true
end
