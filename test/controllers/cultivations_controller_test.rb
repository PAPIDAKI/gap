require 'test_helper'

class CultivationsControllerTest < ActionController::TestCase
  setup do
    @cultivation = cultivations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cultivations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cultivation" do
    assert_difference('Cultivation.count') do
      post :create, cultivation: { date: @cultivation.date, note: @cultivation.note, operator: @cultivation.operator, workers_num: @cultivation.workers_num }
    end

    assert_redirected_to cultivation_path(assigns(:cultivation))
  end

  test "should show cultivation" do
    get :show, id: @cultivation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cultivation
    assert_response :success
  end

  test "should update cultivation" do
    patch :update, id: @cultivation, cultivation: { date: @cultivation.date, note: @cultivation.note, operator: @cultivation.operator, workers_num: @cultivation.workers_num }
    assert_redirected_to cultivation_path(assigns(:cultivation))
  end

  test "should destroy cultivation" do
    assert_difference('Cultivation.count', -1) do
      delete :destroy, id: @cultivation
    end

    assert_redirected_to cultivations_path
  end
end
