require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get terminos" do
    get :terminos
    assert_response :success
  end

end
