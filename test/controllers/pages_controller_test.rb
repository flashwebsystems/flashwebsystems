require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get ayuda" do
    get :ayuda
    assert_response :success
  end

end
