require 'test_helper'

class AutoIdsControllerTest < ActionController::TestCase
  setup do
    @auto_id = auto_ids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auto_ids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auto_id" do
    assert_difference('AutoId.count') do
      post :create, :auto_id => @auto_id.attributes
    end

    assert_redirected_to auto_id_path(assigns(:auto_id))
  end

  test "should show auto_id" do
    get :show, :id => @auto_id.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @auto_id.to_param
    assert_response :success
  end

  test "should update auto_id" do
    put :update, :id => @auto_id.to_param, :auto_id => @auto_id.attributes
    assert_redirected_to auto_id_path(assigns(:auto_id))
  end

  test "should destroy auto_id" do
    assert_difference('AutoId.count', -1) do
      delete :destroy, :id => @auto_id.to_param
    end

    assert_redirected_to auto_ids_path
  end
end
