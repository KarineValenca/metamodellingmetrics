require 'test_helper'

class TypeOfScalesControllerTest < ActionController::TestCase
  setup do
    @type_of_scale = type_of_scales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_of_scales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_of_scale" do
    assert_difference('TypeOfScale.count') do
      post :create, type_of_scale: { description_type_scale: @type_of_scale.description_type_scale, name_type_scale: @type_of_scale.name_type_scale }
    end

    assert_redirected_to type_of_scale_path(assigns(:type_of_scale))
  end

  test "should show type_of_scale" do
    get :show, id: @type_of_scale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_of_scale
    assert_response :success
  end

  test "should update type_of_scale" do
    patch :update, id: @type_of_scale, type_of_scale: { description_type_scale: @type_of_scale.description_type_scale, name_type_scale: @type_of_scale.name_type_scale }
    assert_redirected_to type_of_scale_path(assigns(:type_of_scale))
  end

  test "should destroy type_of_scale" do
    assert_difference('TypeOfScale.count', -1) do
      delete :destroy, id: @type_of_scale
    end

    assert_redirected_to type_of_scales_path
  end
end
