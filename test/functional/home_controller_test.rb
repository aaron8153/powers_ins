require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get associates" do
    get :associates
    assert_response :success
  end

  test "should get affiliations" do
    get :affiliations
    assert_response :success
  end

  test "should get hub" do
    get :hub
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get privacy" do
    get :privacy
    assert_response :success
  end

  test "should get terms" do
    get :terms
    assert_response :success
  end

end
