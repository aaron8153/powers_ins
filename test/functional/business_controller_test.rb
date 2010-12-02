require 'test_helper'

class BusinessControllerTest < ActionController::TestCase
  test "should get consultation" do
    get :consultation
    assert_response :success
  end

  test "should get claim" do
    get :claim
    assert_response :success
  end

  test "should get policy" do
    get :policy
    assert_response :success
  end

  test "should get certificate" do
    get :certificate
    assert_response :success
  end

  test "should get autoid" do
    get :autoid
    assert_response :success
  end

  test "should get billing" do
    get :billing
    assert_response :success
  end

end
