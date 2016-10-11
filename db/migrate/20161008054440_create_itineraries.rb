class CreateItineraries < ActiveRecord::Migration[5.0]
  def change
    create_table :itineraries do |t|
      t.string :name
      t.string :duration
      t.text :description
      t.string :cost
      t.has_many :user_itineraries

      t.timestamps
    end
  end
end
