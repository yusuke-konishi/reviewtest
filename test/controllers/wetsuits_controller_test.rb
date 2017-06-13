require 'test_helper'

class WetsuitsControllerTest < ActionController::TestCase
  setup do
    @wetsuit = wetsuits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wetsuits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wetsuit" do
    assert_difference('Wetsuit.count') do
      post :create, wetsuit: { maker: @wetsuit.maker, type: @wetsuit.type }
    end

    assert_redirected_to wetsuit_path(assigns(:wetsuit))
  end

  test "should show wetsuit" do
    get :show, id: @wetsuit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wetsuit
    assert_response :success
  end

  test "should update wetsuit" do
    patch :update, id: @wetsuit, wetsuit: { maker: @wetsuit.maker, type: @wetsuit.type }
    assert_redirected_to wetsuit_path(assigns(:wetsuit))
  end

  test "should destroy wetsuit" do
    assert_difference('Wetsuit.count', -1) do
      delete :destroy, id: @wetsuit
    end

    assert_redirected_to wetsuits_path
  end
end
