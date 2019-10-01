class Cat < ApplicationRecord
  has_many :naps
  has_many :users, through: :naps
end
