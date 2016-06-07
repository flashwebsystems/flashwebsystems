require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get arrendador" do
    get :arrendador
    assert_response :success
  end

end
