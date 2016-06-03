require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should get usuario" do
    get :usuario
    assert_response :success
  end

end
