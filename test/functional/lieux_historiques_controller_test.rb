require 'test_helper'

class LieuxHistoriquesControllerTest < ActionController::TestCase
  setup do
    @lieux_historique = lieux_historiques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lieux_historiques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lieux_historique" do
    assert_difference('LieuxHistorique.count') do
      post :create, lieux_historique: { desc: @lieux_historique.desc, nom: @lieux_historique.nom, photo: @lieux_historique.photo }
    end

    assert_redirected_to lieux_historique_path(assigns(:lieux_historique))
  end

  test "should show lieux_historique" do
    get :show, id: @lieux_historique
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lieux_historique
    assert_response :success
  end

  test "should update lieux_historique" do
    put :update, id: @lieux_historique, lieux_historique: { desc: @lieux_historique.desc, nom: @lieux_historique.nom, photo: @lieux_historique.photo }
    assert_redirected_to lieux_historique_path(assigns(:lieux_historique))
  end

  test "should destroy lieux_historique" do
    assert_difference('LieuxHistorique.count', -1) do
      delete :destroy, id: @lieux_historique
    end

    assert_redirected_to lieux_historiques_path
  end
end
