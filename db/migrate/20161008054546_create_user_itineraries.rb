class CreateUserItineraries < ActiveRecord::Migration[5.0]
  def change
    create_table :user_itineraries do |t|
      t.belongs_to :user
      t.belongs_to :itinerary

      t.timestamps
    end
  end
end
