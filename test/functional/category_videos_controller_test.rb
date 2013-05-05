require 'test_helper'

class CategoryVideosControllerTest < ActionController::TestCase
  setup do
    @category_video = category_videos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_videos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_video" do
    assert_difference('CategoryVideo.count') do
      post :create, category_video: { desc: @category_video.desc, nom: @category_video.nom }
    end

    assert_redirected_to category_video_path(assigns(:category_video))
  end

  test "should show category_video" do
    get :show, id: @category_video
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_video
    assert_response :success
  end

  test "should update category_video" do
    put :update, id: @category_video, category_video: { desc: @category_video.desc, nom: @category_video.nom }
    assert_redirected_to category_video_path(assigns(:category_video))
  end

  test "should destroy category_video" do
    assert_difference('CategoryVideo.count', -1) do
      delete :destroy, id: @category_video
    end

    assert_redirected_to category_videos_path
  end
end
