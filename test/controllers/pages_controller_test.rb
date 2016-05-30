require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get como_funciona" do
    get :como_funciona
    assert_response :success
  end

end
