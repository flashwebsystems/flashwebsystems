require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get politicas_de_cancelacion" do
    get :politicas_de_cancelacion
    assert_response :success
  end

end
