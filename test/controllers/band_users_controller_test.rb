require 'test_helper'

class BandUsersControllerTest < ActionController::TestCase
  setup do
    @band_user = band_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:band_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create band_user" do
    assert_difference('BandUser.count') do
      post :create, band_user: {  }
    end

    assert_redirected_to band_user_path(assigns(:band_user))
  end

  test "should show band_user" do
    get :show, id: @band_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @band_user
    assert_response :success
  end

  test "should update band_user" do
    patch :update, id: @band_user, band_user: {  }
    assert_redirected_to band_user_path(assigns(:band_user))
  end

  test "should destroy band_user" do
    assert_difference('BandUser.count', -1) do
      delete :destroy, id: @band_user
    end

    assert_redirected_to band_users_path
  end
end
