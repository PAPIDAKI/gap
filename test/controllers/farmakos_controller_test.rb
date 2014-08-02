require 'test_helper'

class FarmakosControllerTest < ActionController::TestCase
  setup do
    @farmako = farmakos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:farmakos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create farmako" do
    assert_difference('Farmako.count') do
      post :create, farmako: { emporikhon: @farmako.emporikhon, gbonoma: @farmako.gbonoma, hmer_egris: @farmako.hmer_egris, telos_egri: @farmako.telos_egri }
    end

    assert_redirected_to farmako_path(assigns(:farmako))
  end

  test "should show farmako" do
    get :show, id: @farmako
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @farmako
    assert_response :success
  end

  test "should update farmako" do
    patch :update, id: @farmako, farmako: { emporikhon: @farmako.emporikhon, gbonoma: @farmako.gbonoma, hmer_egris: @farmako.hmer_egris, telos_egri: @farmako.telos_egri }
    assert_redirected_to farmako_path(assigns(:farmako))
  end

  test "should destroy farmako" do
    assert_difference('Farmako.count', -1) do
      delete :destroy, id: @farmako
    end

    assert_redirected_to farmakos_path
  end
end
