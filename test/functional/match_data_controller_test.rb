require 'test_helper'

class MatchDataControllerTest < ActionController::TestCase
  setup do
    @match_datum = match_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_datum" do
    assert_difference('MatchDatum.count') do
      post :create, match_datum: { division_id: @match_datum.division_id, lineup_position: @match_datum.lineup_position, match_id: @match_datum.match_id, shooter_id: @match_datum.shooter_id, squad: @match_datum.squad }
    end

    assert_redirected_to match_datum_path(assigns(:match_datum))
  end

  test "should show match_datum" do
    get :show, id: @match_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_datum
    assert_response :success
  end

  test "should update match_datum" do
    put :update, id: @match_datum, match_datum: { division_id: @match_datum.division_id, lineup_position: @match_datum.lineup_position, match_id: @match_datum.match_id, shooter_id: @match_datum.shooter_id, squad: @match_datum.squad }
    assert_redirected_to match_datum_path(assigns(:match_datum))
  end

  test "should destroy match_datum" do
    assert_difference('MatchDatum.count', -1) do
      delete :destroy, id: @match_datum
    end

    assert_redirected_to match_data_path
  end
end
