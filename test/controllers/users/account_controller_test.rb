require "test_helper"

class Users::AccountControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_account_index_url
    assert_response :success
  end
end
