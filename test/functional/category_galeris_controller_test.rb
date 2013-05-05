require 'test_helper'

class CategoryGalerisControllerTest < ActionController::TestCase
  setup do
    @category_galeri = category_galeris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_galeris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_galeri" do
    assert_difference('CategoryGaleri.count') do
      post :create, category_galeri: { desc: @category_galeri.desc, titre: @category_galeri.titre }
    end

    assert_redirected_to category_galeri_path(assigns(:category_galeri))
  end

  test "should show category_galeri" do
    get :show, id: @category_galeri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_galeri
    assert_response :success
  end

  test "should update category_galeri" do
    put :update, id: @category_galeri, category_galeri: { desc: @category_galeri.desc, titre: @category_galeri.titre }
    assert_redirected_to category_galeri_path(assigns(:category_galeri))
  end

  test "should destroy category_galeri" do
    assert_difference('CategoryGaleri.count', -1) do
      delete :destroy, id: @category_galeri
    end

    assert_redirected_to category_galeris_path
  end
end
