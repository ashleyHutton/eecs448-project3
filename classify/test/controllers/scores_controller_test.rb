require 'test_helper'

class ScoresControllerTest < ActionController::TestCase
=begin
  setup do
    @score = scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create score" do
    assert_difference('Score.count') do
      post :create, score: { comment: @score.comment, course_id: @score.course_id, difficulty_rating: @score.difficulty_rating, likeability_rating: @score.likeability_rating, workload_rating: @score.workload_rating }
    end

    assert_redirected_to score_path(assigns(:score))
  end

  test "should show score" do
    get :show, id: @score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @score
    assert_response :success
  end

  test "should update score" do
    patch :update, id: @score, score: { comment: @score.comment, course_id: @score.course_id, difficulty_rating: @score.difficulty_rating, likeability_rating: @score.likeability_rating, workload_rating: @score.workload_rating }
    assert_redirected_to score_path(assigns(:score))
  end

  test "should destroy score" do
    assert_difference('Score.count', -1) do
      delete :destroy, id: @score
    end

    assert_redirected_to scores_path
  end
=end
end
