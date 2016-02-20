require 'test_helper'

class InterestTypesControllerTest < ActionController::TestCase
  setup do
    @interest_type = interest_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interest_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interest_type" do
    assert_difference('InterestType.count') do
      post :create, interest_type: {  }
    end

    assert_redirected_to interest_type_path(assigns(:interest_type))
  end

  test "should show interest_type" do
    get :show, id: @interest_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interest_type
    assert_response :success
  end

  test "should update interest_type" do
    patch :update, id: @interest_type, interest_type: {  }
    assert_redirected_to interest_type_path(assigns(:interest_type))
  end

  test "should destroy interest_type" do
    assert_difference('InterestType.count', -1) do
      delete :destroy, id: @interest_type
    end

    assert_redirected_to interest_types_path
  end
end
