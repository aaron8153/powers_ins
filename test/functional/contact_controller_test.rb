require 'test_helper'

class ContactControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get email" do
    get :email
    assert_response :success
  end

  test "should get referal" do
    get :referal
    assert_response :success
  end

end
