require 'test_helper'

class ClitemsControllerTest < ActionController::TestCase
  setup do
    @clitem = clitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clitem" do
    assert_difference('Clitem.count') do
      post :create, clitem: { about: @clitem.about, area: @clitem.area, compliance_criteria: @clitem.compliance_criteria, control_point: @clitem.control_point, for: @clitem.for, module: @clitem.module, number: @clitem.number }
    end

    assert_redirected_to clitem_path(assigns(:clitem))
  end

  test "should show clitem" do
    get :show, id: @clitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clitem
    assert_response :success
  end

  test "should update clitem" do
    patch :update, id: @clitem, clitem: { about: @clitem.about, area: @clitem.area, compliance_criteria: @clitem.compliance_criteria, control_point: @clitem.control_point, for: @clitem.for, module: @clitem.module, number: @clitem.number }
    assert_redirected_to clitem_path(assigns(:clitem))
  end

  test "should destroy clitem" do
    assert_difference('Clitem.count', -1) do
      delete :destroy, id: @clitem
    end

    assert_redirected_to clitems_path
  end
end
