class Sighting < ApplicationRecord
  belongs_to :species
  belongs_to :region

  validates_presence_of :date, :latitude, :longitude
end
