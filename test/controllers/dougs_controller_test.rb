require 'test_helper'

class DougsControllerTest < ActionController::TestCase
  setup do
    @doug = dougs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dougs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doug" do
    assert_difference('Doug.count') do
      post :create, doug: {  }
    end

    assert_redirected_to doug_path(assigns(:doug))
  end

  test "should show doug" do
    get :show, id: @doug
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doug
    assert_response :success
  end

  test "should update doug" do
    patch :update, id: @doug, doug: {  }
    assert_redirected_to doug_path(assigns(:doug))
  end

  test "should destroy doug" do
    assert_difference('Doug.count', -1) do
      delete :destroy, id: @doug
    end

    assert_redirected_to dougs_path
  end
end
