require 'test_helper'

class ShippingMethodsControllerTest < ActionController::TestCase
  setup do
    @shipping_method = shipping_methods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipping_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipping_method" do
    assert_difference('ShippingMethod.count') do
      post :create, shipping_method: { ShippingMethod: @shipping_method.ShippingMethod }
    end

    assert_redirected_to shipping_method_path(assigns(:shipping_method))
  end

  test "should show shipping_method" do
    get :show, id: @shipping_method
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shipping_method
    assert_response :success
  end

  test "should update shipping_method" do
    put :update, id: @shipping_method, shipping_method: { ShippingMethod: @shipping_method.ShippingMethod }
    assert_redirected_to shipping_method_path(assigns(:shipping_method))
  end

  test "should destroy shipping_method" do
    assert_difference('ShippingMethod.count', -1) do
      delete :destroy, id: @shipping_method
    end

    assert_redirected_to shipping_methods_path
  end
end
