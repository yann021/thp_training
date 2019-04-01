require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get Connexion" do
    get login_Connexion_url
    assert_response :success
  end

end
