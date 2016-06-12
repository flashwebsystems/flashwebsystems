require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { address: @user.address, description: @user.description, latitude: @user.latitude, longitude: @user.longitude, title: @user.title, price_day: @user.price_day, price_month: @user.price_month, No_Disponibilidad: @user.No_Disponibilidad, No_Horario: @user.No_Horario, No_TamannoAuto: @user.No_TamannoAuto, No_Nivel: @user.No_Nivel, telefono: @user.telefono, login_id: @user.login_id}
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { address: @user.address, description: @user.description, latitude: @user.latitude, longitude: @user.longitude, title: @user.title, price_day: @user.price_day, price_month: @user.price_month, No_Disponibilidad: @user.No_Disponibilidad, No_Horario: @user.No_Horario, No_TamannoAuto: @user.No_TamannoAuto, No_Nivel: @user.No_Nivel, telefono: @user.telefono, login_id: @user.login_id}
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
