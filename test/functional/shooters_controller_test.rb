require 'test_helper'

class ShootersControllerTest < ActionController::TestCase
  setup do
    @shooter = shooters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shooters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shooter" do
    assert_difference('Shooter.count') do
      post :create, shooter: { name: @shooter.name }
    end

    assert_redirected_to shooter_path(assigns(:shooter))
  end

  test "should show shooter" do
    get :show, id: @shooter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shooter
    assert_response :success
  end

  test "should update shooter" do
    put :update, id: @shooter, shooter: { name: @shooter.name }
    assert_redirected_to shooter_path(assigns(:shooter))
  end

  test "should destroy shooter" do
    assert_difference('Shooter.count', -1) do
      delete :destroy, id: @shooter
    end

    assert_redirected_to shooters_path
  end
end
