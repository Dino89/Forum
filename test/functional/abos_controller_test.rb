require 'test_helper'

class AbosControllerTest < ActionController::TestCase
  setup do
    @abo = abos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abo" do
    assert_difference('Abo.count') do
      post :create, abo: { Thema: @abo.Thema, User: @abo.User }
    end

    assert_redirected_to abo_path(assigns(:abo))
  end

  test "should show abo" do
    get :show, id: @abo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @abo
    assert_response :success
  end

  test "should update abo" do
    put :update, id: @abo, abo: { Thema: @abo.Thema, User: @abo.User }
    assert_redirected_to abo_path(assigns(:abo))
  end

  test "should destroy abo" do
    assert_difference('Abo.count', -1) do
      delete :destroy, id: @abo
    end

    assert_redirected_to abos_path
  end
end
