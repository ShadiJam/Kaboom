require 'test_helper'

class PlacesApiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get places_api_index_url
    assert_response :success
  end

end
