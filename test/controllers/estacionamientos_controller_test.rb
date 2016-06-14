require 'test_helper'

class EstacionamientosControllerTest < ActionController::TestCase
  setup do
    @estacionamiento = estacionamientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estacionamientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estacionamiento" do
    assert_difference('Estacionamiento.count') do
      post :create, estacionamiento: { fe_final: @estacionamiento.fe_final, fe_inicio: @estacionamiento.fe_inicio, mensaje: @estacionamiento.mensaje, monto_pagar: @estacionamiento.monto_pagar, user_id: @estacionamiento.user_id }
    end

    assert_redirected_to estacionamiento_path(assigns(:estacionamiento))
  end

  test "should show estacionamiento" do
    get :show, id: @estacionamiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estacionamiento
    assert_response :success
  end

  test "should update estacionamiento" do
    patch :update, id: @estacionamiento, estacionamiento: { fe_final: @estacionamiento.fe_final, fe_inicio: @estacionamiento.fe_inicio, mensaje: @estacionamiento.mensaje, monto_pagar: @estacionamiento.monto_pagar, user_id: @estacionamiento.user_id }
    assert_redirected_to estacionamiento_path(assigns(:estacionamiento))
  end

  test "should destroy estacionamiento" do
    assert_difference('Estacionamiento.count', -1) do
      delete :destroy, id: @estacionamiento
    end

    assert_redirected_to estacionamientos_path
  end
end
