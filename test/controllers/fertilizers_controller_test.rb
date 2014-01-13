require 'test_helper'

class FertilizersControllerTest < ActionController::TestCase
  setup do
    @fertilizer = fertilizers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fertilizers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fertilizer" do
    assert_difference('Fertilizer.count') do
      post :create, fertilizer: { date: @fertilizer.date, operator: @fertilizer.operator, pmu_id: @fertilizer.pmu_id, quantity: @fertilizer.quantity, reasoning: @fertilizer.reasoning, sub_id: @fertilizer.sub_id, tech_advisor: @fertilizer.tech_advisor }
    end

    assert_redirected_to fertilizer_path(assigns(:fertilizer))
  end

  test "should show fertilizer" do
    get :show, id: @fertilizer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fertilizer
    assert_response :success
  end

  test "should update fertilizer" do
    patch :update, id: @fertilizer, fertilizer: { date: @fertilizer.date, operator: @fertilizer.operator, pmu_id: @fertilizer.pmu_id, quantity: @fertilizer.quantity, reasoning: @fertilizer.reasoning, sub_id: @fertilizer.sub_id, tech_advisor: @fertilizer.tech_advisor }
    assert_redirected_to fertilizer_path(assigns(:fertilizer))
  end

  test "should destroy fertilizer" do
    assert_difference('Fertilizer.count', -1) do
      delete :destroy, id: @fertilizer
    end

    assert_redirected_to fertilizers_path
  end
end
