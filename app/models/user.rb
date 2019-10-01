class User < ApplicationRecord
  has_many :naps
  has_many :cats, through: :naps
end
