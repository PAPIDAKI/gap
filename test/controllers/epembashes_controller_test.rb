require 'test_helper'

class EpembashesControllerTest < ActionController::TestCase
  setup do
    @epembash = epembashes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:epembashes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create epembash" do
    assert_difference('Epembash.count') do
      post :create, epembash: { comments: @epembash.comments, crop: @epembash.crop, diast_pros: @epembash.diast_pros, farmako_id: @epembash.farmako_id }
    end

    assert_redirected_to epembash_path(assigns(:epembash))
  end

  test "should show epembash" do
    get :show, id: @epembash
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @epembash
    assert_response :success
  end

  test "should update epembash" do
    patch :update, id: @epembash, epembash: { comments: @epembash.comments, crop: @epembash.crop, diast_pros: @epembash.diast_pros, farmako_id: @epembash.farmako_id }
    assert_redirected_to epembash_path(assigns(:epembash))
  end

  test "should destroy epembash" do
    assert_difference('Epembash.count', -1) do
      delete :destroy, id: @epembash
    end

    assert_redirected_to epembashes_path
  end
end
