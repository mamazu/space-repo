require 'test_helper'

class MapControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get map_main_url
    assert_response :success
  end

end
