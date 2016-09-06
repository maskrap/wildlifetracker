class Species < ApplicationRecord
  has_many :sightings
  validates :name, :presence => true
end
