require 'test_helper'

class TeslasControllerTest < ActionController::TestCase
  setup do
    @tesla = teslas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teslas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tesla" do
    assert_difference('Tesla.count') do
      post :create, tesla: {  }
    end

    assert_redirected_to tesla_path(assigns(:tesla))
  end

  test "should show tesla" do
    get :show, id: @tesla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tesla
    assert_response :success
  end

  test "should update tesla" do
    patch :update, id: @tesla, tesla: {  }
    assert_redirected_to tesla_path(assigns(:tesla))
  end

  test "should destroy tesla" do
    assert_difference('Tesla.count', -1) do
      delete :destroy, id: @tesla
    end

    assert_redirected_to teslas_path
  end
end
