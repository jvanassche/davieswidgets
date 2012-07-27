require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { BillingAddress1: @customer.BillingAddress1, BillingAddress2: @customer.BillingAddress2, BillingCity: @customer.BillingCity, BillingPhone: @customer.BillingPhone, BillingState: @customer.BillingState, BillingZip: @customer.BillingZip, FirstName: @customer.FirstName, LastName: @customer.LastName, ShipAddress1: @customer.ShipAddress1, ShipAddress2: @customer.ShipAddress2, ShipCity: @customer.ShipCity, ShipPhone: @customer.ShipPhone, ShipState: @customer.ShipState, ShipZip: @customer.ShipZip }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    put :update, id: @customer, customer: { BillingAddress1: @customer.BillingAddress1, BillingAddress2: @customer.BillingAddress2, BillingCity: @customer.BillingCity, BillingPhone: @customer.BillingPhone, BillingState: @customer.BillingState, BillingZip: @customer.BillingZip, FirstName: @customer.FirstName, LastName: @customer.LastName, ShipAddress1: @customer.ShipAddress1, ShipAddress2: @customer.ShipAddress2, ShipCity: @customer.ShipCity, ShipPhone: @customer.ShipPhone, ShipState: @customer.ShipState, ShipZip: @customer.ShipZip }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
