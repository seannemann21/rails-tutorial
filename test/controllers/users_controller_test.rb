require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_path
    assert_response :success
  end

    test "should get new title" do
    get signup_path
    assert_select "title", full_title("Sign up")
  end

end
