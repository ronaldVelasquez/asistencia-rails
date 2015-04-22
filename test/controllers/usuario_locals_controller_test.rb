require 'test_helper'

class UsuarioLocalsControllerTest < ActionController::TestCase
  setup do
    @usuario_local = usuario_locals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuario_locals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario_local" do
    assert_difference('UsuarioLocal.count') do
      post :create, usuario_local: {  }
    end

    assert_redirected_to usuario_local_path(assigns(:usuario_local))
  end

  test "should show usuario_local" do
    get :show, id: @usuario_local
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario_local
    assert_response :success
  end

  test "should update usuario_local" do
    patch :update, id: @usuario_local, usuario_local: {  }
    assert_redirected_to usuario_local_path(assigns(:usuario_local))
  end

  test "should destroy usuario_local" do
    assert_difference('UsuarioLocal.count', -1) do
      delete :destroy, id: @usuario_local
    end

    assert_redirected_to usuario_locals_path
  end
end
