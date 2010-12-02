require 'test_helper'

class AboutHeadingsControllerTest < ActionController::TestCase
  setup do
    @about_heading = about_headings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:about_headings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create about_heading" do
    assert_difference('AboutHeading.count') do
      post :create, :about_heading => @about_heading.attributes
    end

    assert_redirected_to about_heading_path(assigns(:about_heading))
  end

  test "should show about_heading" do
    get :show, :id => @about_heading.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @about_heading.to_param
    assert_response :success
  end

  test "should update about_heading" do
    put :update, :id => @about_heading.to_param, :about_heading => @about_heading.attributes
    assert_redirected_to about_heading_path(assigns(:about_heading))
  end

  test "should destroy about_heading" do
    assert_difference('AboutHeading.count', -1) do
      delete :destroy, :id => @about_heading.to_param
    end

    assert_redirected_to about_headings_path
  end
end
