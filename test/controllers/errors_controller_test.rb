require 'test_helper'

class ErrorsControllerTest < ActionDispatch::IntegrationTest
  test "should get routes" do
    get errors_routes_url
    assert_response :success
  end

end
