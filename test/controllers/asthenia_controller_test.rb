require 'test_helper'

class AstheniaControllerTest < ActionController::TestCase
  setup do
    @asthenium = asthenia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asthenia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asthenium" do
    assert_difference('Asthenium.count') do
      post :create, asthenium: { astenia: @asthenium.astenia, code_asten: @asthenium.code_asten, nastenia: @asthenium.nastenia }
    end

    assert_redirected_to asthenium_path(assigns(:asthenium))
  end

  test "should show asthenium" do
    get :show, id: @asthenium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asthenium
    assert_response :success
  end

  test "should update asthenium" do
    patch :update, id: @asthenium, asthenium: { astenia: @asthenium.astenia, code_asten: @asthenium.code_asten, nastenia: @asthenium.nastenia }
    assert_redirected_to asthenium_path(assigns(:asthenium))
  end

  test "should destroy asthenium" do
    assert_difference('Asthenium.count', -1) do
      delete :destroy, id: @asthenium
    end

    assert_redirected_to asthenia_path
  end
end
