class PlacesApiController < ApplicationController
  def index
    @places_info = PlacesApi.get_api.info
  end
end
