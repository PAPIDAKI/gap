require 'test_helper'

class GroupRolesControllerTest < ActionController::TestCase
  setup do
    @group_role = group_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_role" do
    assert_difference('GroupRole.count') do
      post :create, group_role: { job_description: @group_role.job_description, reports_to: @group_role.reports_to, supervisor_to: @group_role.supervisor_to, title: @group_role.title }
    end

    assert_redirected_to group_role_path(assigns(:group_role))
  end

  test "should show group_role" do
    get :show, id: @group_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_role
    assert_response :success
  end

  test "should update group_role" do
    patch :update, id: @group_role, group_role: { job_description: @group_role.job_description, reports_to: @group_role.reports_to, supervisor_to: @group_role.supervisor_to, title: @group_role.title }
    assert_redirected_to group_role_path(assigns(:group_role))
  end

  test "should destroy group_role" do
    assert_difference('GroupRole.count', -1) do
      delete :destroy, id: @group_role
    end

    assert_redirected_to group_roles_path
  end
end
