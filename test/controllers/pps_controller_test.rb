require 'test_helper'

class PpsControllerTest < ActionController::TestCase
  setup do
    @pp = pps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pp" do
    assert_difference('Pp.count') do
      post :create, pp: { logentry_id: @pp.logentry_id, quantity: @pp.quantity }
    end

    assert_redirected_to pp_path(assigns(:pp))
  end

  test "should show pp" do
    get :show, id: @pp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pp
    assert_response :success
  end

  test "should update pp" do
    patch :update, id: @pp, pp: { logentry_id: @pp.logentry_id, quantity: @pp.quantity }
    assert_redirected_to pp_path(assigns(:pp))
  end

  test "should destroy pp" do
    assert_difference('Pp.count', -1) do
      delete :destroy, id: @pp
    end

    assert_redirected_to pps_path
  end
end
