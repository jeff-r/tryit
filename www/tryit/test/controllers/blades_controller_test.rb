require 'test_helper'

class BladesControllerTest < ActionController::TestCase
  setup do
    @blade = blades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blade" do
    assert_difference('Blade.count') do
      post :create, blade: { name: @blade.name }
    end

    assert_redirected_to blade_path(assigns(:blade))
  end

  test "should show blade" do
    get :show, id: @blade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blade
    assert_response :success
  end

  test "should update blade" do
    patch :update, id: @blade, blade: { name: @blade.name }
    assert_redirected_to blade_path(assigns(:blade))
  end

  test "should destroy blade" do
    assert_difference('Blade.count', -1) do
      delete :destroy, id: @blade
    end

    assert_redirected_to blades_path
  end
end
