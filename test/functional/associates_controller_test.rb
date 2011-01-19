require 'test_helper'

class AssociatesControllerTest < ActionController::TestCase
  setup do
    @associate = associates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:associates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create associate" do
    assert_difference('Associate.count') do
      post :create, :associate => @associate.attributes
    end

    assert_redirected_to associate_path(assigns(:associate))
  end

  test "should show associate" do
    get :show, :id => @associate.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @associate.to_param
    assert_response :success
  end

  test "should update associate" do
    put :update, :id => @associate.to_param, :associate => @associate.attributes
    assert_redirected_to associate_path(assigns(:associate))
  end

  test "should destroy associate" do
    assert_difference('Associate.count', -1) do
      delete :destroy, :id => @associate.to_param
    end

    assert_redirected_to associates_path
  end
end
