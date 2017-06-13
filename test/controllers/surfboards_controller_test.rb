require 'test_helper'

class SurfboardsControllerTest < ActionController::TestCase
  setup do
    @surfboard = surfboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surfboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surfboard" do
    assert_difference('Surfboard.count') do
      post :create, surfboard: { company: @surfboard.company, model: @surfboard.model, shaper: @surfboard.shaper }
    end

    assert_redirected_to surfboard_path(assigns(:surfboard))
  end

  test "should show surfboard" do
    get :show, id: @surfboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surfboard
    assert_response :success
  end

  test "should update surfboard" do
    patch :update, id: @surfboard, surfboard: { company: @surfboard.company, model: @surfboard.model, shaper: @surfboard.shaper }
    assert_redirected_to surfboard_path(assigns(:surfboard))
  end

  test "should destroy surfboard" do
    assert_difference('Surfboard.count', -1) do
      delete :destroy, id: @surfboard
    end

    assert_redirected_to surfboards_path
  end
end
