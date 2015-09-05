require 'test_helper'

class RazorsControllerTest < ActionController::TestCase
  setup do
    @razor = razors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:razors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create razor" do
    assert_difference('Razor.count') do
      post :create, razor: { name: @razor.name }
    end

    assert_redirected_to razor_path(assigns(:razor))
  end

  test "should show razor" do
    get :show, id: @razor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @razor
    assert_response :success
  end

  test "should update razor" do
    patch :update, id: @razor, razor: { name: @razor.name }
    assert_redirected_to razor_path(assigns(:razor))
  end

  test "should destroy razor" do
    assert_difference('Razor.count', -1) do
      delete :destroy, id: @razor
    end

    assert_redirected_to razors_path
  end
end
