require 'test_helper'

class ScalesControllerTest < ActionController::TestCase
  setup do
    @scale = scales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scale" do
    assert_difference('Scale.count') do
      post :create, scale: { description_scale: @scale.description_scale, max_number: @scale.max_number, min_number: @scale.min_number, name_scale: @scale.name_scale }
    end

    assert_redirected_to scale_path(assigns(:scale))
  end

  test "should show scale" do
    get :show, id: @scale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scale
    assert_response :success
  end

  test "should update scale" do
    patch :update, id: @scale, scale: { description_scale: @scale.description_scale, max_number: @scale.max_number, min_number: @scale.min_number, name_scale: @scale.name_scale }
    assert_redirected_to scale_path(assigns(:scale))
  end

  test "should destroy scale" do
    assert_difference('Scale.count', -1) do
      delete :destroy, id: @scale
    end

    assert_redirected_to scales_path
  end
end
