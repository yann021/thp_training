require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get firstname" do
    get user_firstname_url
    assert_response :success
  end

end
