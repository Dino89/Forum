require 'test_helper'

class KommentarsControllerTest < ActionController::TestCase
  setup do
    @kommentar = kommentars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kommentars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kommentar" do
    assert_difference('Kommentar.count') do
      post :create, kommentar: { Author: @kommentar.Author, ProContraNeutral: @kommentar.ProContraNeutral, Text: @kommentar.Text, ThemenID: @kommentar.ThemenID, Title: @kommentar.Title }
    end

    assert_redirected_to kommentar_path(assigns(:kommentar))
  end

  test "should show kommentar" do
    get :show, id: @kommentar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kommentar
    assert_response :success
  end

  test "should update kommentar" do
    put :update, id: @kommentar, kommentar: { Author: @kommentar.Author, ProContraNeutral: @kommentar.ProContraNeutral, Text: @kommentar.Text, ThemenID: @kommentar.ThemenID, Title: @kommentar.Title }
    assert_redirected_to kommentar_path(assigns(:kommentar))
  end

  test "should destroy kommentar" do
    assert_difference('Kommentar.count', -1) do
      delete :destroy, id: @kommentar
    end

    assert_redirected_to kommentars_path
  end
end
