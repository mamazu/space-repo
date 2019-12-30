require 'test_helper'

class PlanetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get planet_index_url
    assert_response :success
  end

end
