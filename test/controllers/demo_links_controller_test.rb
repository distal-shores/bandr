require 'test_helper'

class DemoLinksControllerTest < ActionController::TestCase
  setup do
    @demo_link = demo_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:demo_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create demo_link" do
    assert_difference('DemoLink.count') do
      post :create, demo_link: { description: @demo_link.description, url: @demo_link.url }
    end

    assert_redirected_to demo_link_path(assigns(:demo_link))
  end

  test "should show demo_link" do
    get :show, id: @demo_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @demo_link
    assert_response :success
  end

  test "should update demo_link" do
    patch :update, id: @demo_link, demo_link: { description: @demo_link.description, url: @demo_link.url }
    assert_redirected_to demo_link_path(assigns(:demo_link))
  end

  test "should destroy demo_link" do
    assert_difference('DemoLink.count', -1) do
      delete :destroy, id: @demo_link
    end

    assert_redirected_to demo_links_path
  end
end
