require 'test_helper'

class UploadPicsControllerTest < ActionController::TestCase
  setup do
    @upload_pic = upload_pics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:upload_pics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create upload_pic" do
    assert_difference('UploadPic.count') do
      post :create, upload_pic: { imagename: @upload_pic.imagename }
    end

    assert_redirected_to upload_pic_path(assigns(:upload_pic))
  end

  test "should show upload_pic" do
    get :show, id: @upload_pic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @upload_pic
    assert_response :success
  end

  test "should update upload_pic" do
    put :update, id: @upload_pic, upload_pic: { imagename: @upload_pic.imagename }
    assert_redirected_to upload_pic_path(assigns(:upload_pic))
  end

  test "should destroy upload_pic" do
    assert_difference('UploadPic.count', -1) do
      delete :destroy, id: @upload_pic
    end

    assert_redirected_to upload_pics_path
  end
end
