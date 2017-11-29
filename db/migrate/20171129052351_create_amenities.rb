class CreateAmenities < ActiveRecord::Migration[5.0]
  def change
    create_table :amenities do |t|
      t.boolean :pet
      t.boolean :elevator
      t.boolean :kid_friendly
      t.boolean :gym
      t.boolean :doorman
      t.boolean :breakfast
      t.boolean :suitable_for_events
      t.boolean :free_parking
      t.boolean :smoking_allowed
      t.boolean :wheelchair_accessible
      t.boolean :wireless_internet
      t.boolean :hot_tub
      t.boolean :air_conditioning
      t.boolean :kitchen
      t.boolean :cable_tv
      t.boolean :wireless_intercom
      t.boolean :baby_bath
      t.boolean :baby_monitor
      t.boolean :babysitter
      t.boolean :bathtub
      t.boolean :changing_table
      t.boolean :childrend_books_and_toys
      t.boolean :childrens_dinnerware
      t.boolean :crib
      t.boolean :fireplace_guards
      t.boolean :indoor_fireplace
      t.boolean :pool
      t.boolean :shampoo
      t.boolean :hangers
      t.boolean :iron
      t.boolean :dryer
      t.boolean :hair_dryer
      t.boolean :Laptop
      t.boolean :tv
      t.boolean :washer
      t.boolean :heating
      t.boolean :free_parking_on_street
      t.boolean :private_entrance
      t.boolean :ethernet_connection
      t.boolean :ethernet_connection
      t.boolean :game_console
      t.boolean :high_chair
      t.boolean :outlet_covers
      t.boolean :travel_crib
      t.boolean :room_darkening_shades
      t.boolean :stair_gates
      t.boolean :estable_corner_guardssentials
      t.boolean :table_corner_guards

      t.timestamps
    end
  end
end
