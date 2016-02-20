require 'test_helper'

class InterestUsersControllerTest < ActionController::TestCase
  setup do
    @interest_user = interest_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interest_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interest_user" do
    assert_difference('InterestUser.count') do
      post :create, interest_user: {  }
    end

    assert_redirected_to interest_user_path(assigns(:interest_user))
  end

  test "should show interest_user" do
    get :show, id: @interest_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interest_user
    assert_response :success
  end

  test "should update interest_user" do
    patch :update, id: @interest_user, interest_user: {  }
    assert_redirected_to interest_user_path(assigns(:interest_user))
  end

  test "should destroy interest_user" do
    assert_difference('InterestUser.count', -1) do
      delete :destroy, id: @interest_user
    end

    assert_redirected_to interest_users_path
  end
end
