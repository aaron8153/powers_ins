require 'test_helper'

class BenefitsControllerTest < ActionController::TestCase
  test "should get group" do
    get :group
    assert_response :success
  end

  test "should get individual" do
    get :individual
    assert_response :success
  end

end
