require 'test_helper'

class DroncropsControllerTest < ActionController::TestCase
  setup do
    @droncrop = droncrops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:droncrops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create droncrop" do
    assert_difference('Droncrop.count') do
      post :create, droncrop: { code_fyta: @droncrop.code_fyta, crops: @droncrop.crops, kodikos: @droncrop.kodikos }
    end

    assert_redirected_to droncrop_path(assigns(:droncrop))
  end

  test "should show droncrop" do
    get :show, id: @droncrop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @droncrop
    assert_response :success
  end

  test "should update droncrop" do
    patch :update, id: @droncrop, droncrop: { code_fyta: @droncrop.code_fyta, crops: @droncrop.crops, kodikos: @droncrop.kodikos }
    assert_redirected_to droncrop_path(assigns(:droncrop))
  end

  test "should destroy droncrop" do
    assert_difference('Droncrop.count', -1) do
      delete :destroy, id: @droncrop
    end

    assert_redirected_to droncrops_path
  end
end
