require 'test_helper'

class NumberSetsControllerTest < ActionController::TestCase
  setup do
    @number_set = number_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:number_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create number_set" do
    assert_difference('NumberSet.count') do
      post :create, number_set: { description_number_set: @number_set.description_number_set, name_number_set: @number_set.name_number_set }
    end

    assert_redirected_to number_set_path(assigns(:number_set))
  end

  test "should show number_set" do
    get :show, id: @number_set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @number_set
    assert_response :success
  end

  test "should update number_set" do
    patch :update, id: @number_set, number_set: { description_number_set: @number_set.description_number_set, name_number_set: @number_set.name_number_set }
    assert_redirected_to number_set_path(assigns(:number_set))
  end

  test "should destroy number_set" do
    assert_difference('NumberSet.count', -1) do
      delete :destroy, id: @number_set
    end

    assert_redirected_to number_sets_path
  end
end
