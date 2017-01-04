class PlacesApi < ApplicationRecord
  def self.get_api_info
    # https://maps.googleapis.com/maps/api/place/nearbysearch/output?parameters
    places_api = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&radius=500&type=restaurant&keyword=cruise&key=#{{GOOGLE_PLACES_API_KEY}}"
    request_to_places_api = Net::HTTP.get(URI(places_api))
    JSON.parse request_to_places_api
  end
end
