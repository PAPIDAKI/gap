require 'test_helper'

class PmusControllerTest < ActionController::TestCase
  setup do
    @pmu = pmus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pmus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pmu" do
    assert_difference('Pmu.count') do
      post :create, pmu: { address: @pmu.address, area: @pmu.area, expected_production: @pmu.expected_production, location: @pmu.location, nearest_village: @pmu.nearest_village, number_of_trees: @pmu.number_of_trees, plantation_year: @pmu.plantation_year, produce: @pmu.produce, variety: @pmu.variety }
    end

    assert_redirected_to pmu_path(assigns(:pmu))
  end

  test "should show pmu" do
    get :show, id: @pmu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pmu
    assert_response :success
  end

  test "should update pmu" do
    patch :update, id: @pmu, pmu: { address: @pmu.address, area: @pmu.area, expected_production: @pmu.expected_production, location: @pmu.location, nearest_village: @pmu.nearest_village, number_of_trees: @pmu.number_of_trees, plantation_year: @pmu.plantation_year, produce: @pmu.produce, variety: @pmu.variety }
    assert_redirected_to pmu_path(assigns(:pmu))
  end

  test "should destroy pmu" do
    assert_difference('Pmu.count', -1) do
      delete :destroy, id: @pmu
    end

    assert_redirected_to pmus_path
  end
end
