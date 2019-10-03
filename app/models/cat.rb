class Cat < ApplicationRecord
  has_many :naps
  has_many :users, through: :naps
  # validates :name, presence: true
  # validates :name, uniqueness: true

end
