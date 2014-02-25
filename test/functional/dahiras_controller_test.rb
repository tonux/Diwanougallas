require 'test_helper'

class DahirasControllerTest < ActionController::TestCase
  setup do
    @dahira = dahiras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dahiras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dahira" do
    assert_difference('Dahira.count') do
      post :create, dahira: { adresse: @dahira.adresse, desc: @dahira.desc, nom: @dahira.nom, photo: @dahira.photo, telephone: @dahira.telephone }
    end

    assert_redirected_to dahira_path(assigns(:dahira))
  end

  test "should show dahira" do
    get :show, id: @dahira
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dahira
    assert_response :success
  end

  test "should update dahira" do
    put :update, id: @dahira, dahira: { adresse: @dahira.adresse, desc: @dahira.desc, nom: @dahira.nom, photo: @dahira.photo, telephone: @dahira.telephone }
    assert_redirected_to dahira_path(assigns(:dahira))
  end

  test "should destroy dahira" do
    assert_difference('Dahira.count', -1) do
      delete :destroy, id: @dahira
    end

    assert_redirected_to dahiras_path
  end
end
