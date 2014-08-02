require 'test_helper'

class SystatiksControllerTest < ActionController::TestCase
  setup do
    @systatik = systatiks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:systatiks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create systatik" do
    assert_difference('Systatik.count') do
      post :create, systatik: { kodikos: @systatik.kodikos, onomadron: @systatik.onomadron }
    end

    assert_redirected_to systatik_path(assigns(:systatik))
  end

  test "should show systatik" do
    get :show, id: @systatik
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @systatik
    assert_response :success
  end

  test "should update systatik" do
    patch :update, id: @systatik, systatik: { kodikos: @systatik.kodikos, onomadron: @systatik.onomadron }
    assert_redirected_to systatik_path(assigns(:systatik))
  end

  test "should destroy systatik" do
    assert_difference('Systatik.count', -1) do
      delete :destroy, id: @systatik
    end

    assert_redirected_to systatiks_path
  end
end
