require 'test_helper'

class GoogleBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get google_books_new_url
    assert_response :success
  end

end
