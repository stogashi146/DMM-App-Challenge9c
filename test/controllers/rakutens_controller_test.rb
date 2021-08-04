require 'test_helper'

class RakutensControllerTest < ActionDispatch::IntegrationTest
  test "should get rakuten_search" do
    get rakutens_rakuten_search_url
    assert_response :success
  end

end
