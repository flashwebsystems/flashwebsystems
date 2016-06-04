require 'test_helper'

class IntegrationTestControllerTest < ActionController::TestCase
  test "should get users_signup" do
    get :users_signup
    assert_response :success
  end

end
