require 'test_helper'

class HomeautoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get quote" do
    get :quote
    assert_response :success
  end

  test "should get claim" do
    get :claim
    assert_response :success
  end

  test "should get autoid" do
    get :autoid
    assert_response :success
  end

  test "should get policy" do
    get :policy
    assert_response :success
  end

  test "should get billing" do
    get :billing
    assert_response :success
  end

end
