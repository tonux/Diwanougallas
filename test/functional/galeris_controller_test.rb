require 'test_helper'

class GalerisControllerTest < ActionController::TestCase
  setup do
    @galeri = galeris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:galeris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create galeri" do
    assert_difference('Galeri.count') do
      post :create, galeri: { desc: @galeri.desc, photo: @galeri.photo, titre: @galeri.titre }
    end

    assert_redirected_to galeri_path(assigns(:galeri))
  end

  test "should show galeri" do
    get :show, id: @galeri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @galeri
    assert_response :success
  end

  test "should update galeri" do
    put :update, id: @galeri, galeri: { desc: @galeri.desc, photo: @galeri.photo, titre: @galeri.titre }
    assert_redirected_to galeri_path(assigns(:galeri))
  end

  test "should destroy galeri" do
    assert_difference('Galeri.count', -1) do
      delete :destroy, id: @galeri
    end

    assert_redirected_to galeris_path
  end
end
