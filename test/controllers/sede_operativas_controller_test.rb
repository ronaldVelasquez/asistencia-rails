require 'test_helper'

class SedeOperativasControllerTest < ActionController::TestCase
  setup do
    @sede_operativa = sede_operativas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sede_operativas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sede_operativa" do
    assert_difference('SedeOperativa.count') do
      post :create, sede_operativa: { cod_sede_operativa: @sede_operativa.cod_sede_operativa, sede_operativa: @sede_operativa.sede_operativa }
    end

    assert_redirected_to sede_operativa_path(assigns(:sede_operativa))
  end

  test "should show sede_operativa" do
    get :show, id: @sede_operativa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sede_operativa
    assert_response :success
  end

  test "should update sede_operativa" do
    patch :update, id: @sede_operativa, sede_operativa: { cod_sede_operativa: @sede_operativa.cod_sede_operativa, sede_operativa: @sede_operativa.sede_operativa }
    assert_redirected_to sede_operativa_path(assigns(:sede_operativa))
  end

  test "should destroy sede_operativa" do
    assert_difference('SedeOperativa.count', -1) do
      delete :destroy, id: @sede_operativa
    end

    assert_redirected_to sede_operativas_path
  end
end
