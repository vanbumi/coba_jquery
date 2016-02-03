require 'test_helper'

class XservicesControllerTest < ActionController::TestCase
  setup do
    @xservice = xservices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:xservices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create xservice" do
    assert_difference('Xservice.count') do
      post :create, xservice: { name: @xservice.name }
    end

    assert_redirected_to xservice_path(assigns(:xservice))
  end

  test "should show xservice" do
    get :show, id: @xservice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @xservice
    assert_response :success
  end

  test "should update xservice" do
    patch :update, id: @xservice, xservice: { name: @xservice.name }
    assert_redirected_to xservice_path(assigns(:xservice))
  end

  test "should destroy xservice" do
    assert_difference('Xservice.count', -1) do
      delete :destroy, id: @xservice
    end

    assert_redirected_to xservices_path
  end
end
