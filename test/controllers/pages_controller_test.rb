require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get busqueda_estacionamiento" do
    get :busqueda_estacionamiento
    assert_response :success
  end

  test "should get ofertas" do
    get :ofertas
    assert_response :success
  end

  test "should get preguntas_frecuentes" do
    get :preguntas_frecuentes
    assert_response :success
  end

end
