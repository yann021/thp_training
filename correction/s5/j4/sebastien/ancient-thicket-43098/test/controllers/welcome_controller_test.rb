require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get team" do
    get welcome_team_url
    assert_response :success
  end

  test "should get contact" do
    get welcome_contact_url
    assert_response :success
  end

  test "should get gossip" do
    get welcome_gossip_url
    assert_response :success
  end

end
