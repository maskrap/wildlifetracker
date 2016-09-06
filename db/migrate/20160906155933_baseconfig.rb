class Baseconfig < ActiveRecord::Migration[5.0]
  def change
    create_table :species do | t |
      t.string :name
      t.timestamps
    end

    create_table :sightings do | t |
      t.string :latitude
      t.string :longitude
      t.datetime :date
      t.integer :species_id
      t.integer :region_id
      t.timestamps
    end

    create_table :regions do | t |
      t.string :name
      t.timestamps
    end
  end
end
