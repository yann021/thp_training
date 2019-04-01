require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get welcomepage" do
    get index_welcomepage_url
    assert_response :success
  end

end
