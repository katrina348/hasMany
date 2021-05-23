class Planet < ApplicationRecord
  has_many :moons, dependent: :destroy
end
