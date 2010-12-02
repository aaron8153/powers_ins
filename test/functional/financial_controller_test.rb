require 'test_helper'

class FinancialControllerTest < ActionController::TestCase
  test "should get planning" do
    get :planning
    assert_response :success
  end

  test "should get advisors" do
    get :advisors
    assert_response :success
  end

end
