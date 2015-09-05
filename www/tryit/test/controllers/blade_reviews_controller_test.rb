require 'test_helper'

class BladeReviewsControllerTest < ActionController::TestCase
  setup do
    @blade_review = blade_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blade_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blade_review" do
    assert_difference('BladeReview.count') do
      post :create, blade_review: { blade_id: @blade_review.blade_id, date: @blade_review.date, razor_id: @blade_review.razor_id, text: @blade_review.text }
    end

    assert_redirected_to blade_review_path(assigns(:blade_review))
  end

  test "should show blade_review" do
    get :show, id: @blade_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blade_review
    assert_response :success
  end

  test "should update blade_review" do
    patch :update, id: @blade_review, blade_review: { blade_id: @blade_review.blade_id, date: @blade_review.date, razor_id: @blade_review.razor_id, text: @blade_review.text }
    assert_redirected_to blade_review_path(assigns(:blade_review))
  end

  test "should destroy blade_review" do
    assert_difference('BladeReview.count', -1) do
      delete :destroy, id: @blade_review
    end

    assert_redirected_to blade_reviews_path
  end
end
