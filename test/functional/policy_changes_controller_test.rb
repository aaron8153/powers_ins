require 'test_helper'

class PolicyChangesControllerTest < ActionController::TestCase
  setup do
    @policy_change = policy_changes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:policy_changes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create policy_change" do
    assert_difference('PolicyChange.count') do
      post :create, :policy_change => @policy_change.attributes
    end

    assert_redirected_to policy_change_path(assigns(:policy_change))
  end

  test "should show policy_change" do
    get :show, :id => @policy_change.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @policy_change.to_param
    assert_response :success
  end

  test "should update policy_change" do
    put :update, :id => @policy_change.to_param, :policy_change => @policy_change.attributes
    assert_redirected_to policy_change_path(assigns(:policy_change))
  end

  test "should destroy policy_change" do
    assert_difference('PolicyChange.count', -1) do
      delete :destroy, :id => @policy_change.to_param
    end

    assert_redirected_to policy_changes_path
  end
end
