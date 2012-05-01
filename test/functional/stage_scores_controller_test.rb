require 'test_helper'

class StageScoresControllerTest < ActionController::TestCase
  setup do
    @stage_score = stage_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stage_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stage_score" do
    assert_difference('StageScore.count') do
      post :create, stage_score: { no_shoots: @stage_score.no_shoots, points_down: @stage_score.points_down, procedurals: @stage_score.procedurals, shooter_id: @stage_score.shooter_id, shot_time: @stage_score.shot_time, stage_id: @stage_score.stage_id }
    end

    assert_redirected_to stage_score_path(assigns(:stage_score))
  end

  test "should show stage_score" do
    get :show, id: @stage_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stage_score
    assert_response :success
  end

  test "should update stage_score" do
    put :update, id: @stage_score, stage_score: { no_shoots: @stage_score.no_shoots, points_down: @stage_score.points_down, procedurals: @stage_score.procedurals, shooter_id: @stage_score.shooter_id, shot_time: @stage_score.shot_time, stage_id: @stage_score.stage_id }
    assert_redirected_to stage_score_path(assigns(:stage_score))
  end

  test "should destroy stage_score" do
    assert_difference('StageScore.count', -1) do
      delete :destroy, id: @stage_score
    end

    assert_redirected_to stage_scores_path
  end
end
