require 'test_helper'

class MoneysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get moneys_index_url
    assert_response :success
  end

end
