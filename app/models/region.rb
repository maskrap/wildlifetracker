class Region < ApplicationRecord
  has_many :sightings

  validates_presence_of :name
end
