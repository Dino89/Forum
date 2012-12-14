require 'test_helper'

class RaumsControllerTest < ActionController::TestCase
  setup do
    @raum = raums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raum" do
    assert_difference('Raum.count') do
      post :create, raum: { Title: @raum.Title }
    end

    assert_redirected_to raum_path(assigns(:raum))
  end

  test "should show raum" do
    get :show, id: @raum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raum
    assert_response :success
  end

  test "should update raum" do
    put :update, id: @raum, raum: { Title: @raum.Title }
    assert_redirected_to raum_path(assigns(:raum))
  end

  test "should destroy raum" do
    assert_difference('Raum.count', -1) do
      delete :destroy, id: @raum
    end

    assert_redirected_to raums_path
  end
end
