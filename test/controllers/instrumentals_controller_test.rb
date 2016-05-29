require 'test_helper'

class InstrumentalsControllerTest < ActionController::TestCase
  setup do
    @instrumental = instrumentals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instrumentals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instrumental" do
    assert_difference('Instrumental.count') do
      post :create, instrumental: { name: @instrumental.name }
    end

    assert_redirected_to instrumental_path(assigns(:instrumental))
  end

  test "should show instrumental" do
    get :show, id: @instrumental
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instrumental
    assert_response :success
  end

  test "should update instrumental" do
    patch :update, id: @instrumental, instrumental: { name: @instrumental.name }
    assert_redirected_to instrumental_path(assigns(:instrumental))
  end

  test "should destroy instrumental" do
    assert_difference('Instrumental.count', -1) do
      delete :destroy, id: @instrumental
    end

    assert_redirected_to instrumentals_path
  end
end
