require 'test_helper'

class ButtonControllerTest < ActionDispatch::IntegrationTest
  test "should get like" do
    get button_like_url
    assert_response :success
  end

end
