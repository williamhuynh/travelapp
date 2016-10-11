json.extract! itinerary, :id, :name, :duration, :description, :cost, :has_many, :created_at, :updated_at
json.url itinerary_url(itinerary, format: :json)