require 'test_helper'

class SchematicsControllerTest < ActionController::TestCase
  setup do
    @schematic = schematics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schematics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schematic" do
    assert_difference('Schematic.count') do
      post :create, schematic: { ComponentID: @schematic.ComponentID, ProductID: @schematic.ProductID }
    end

    assert_redirected_to schematic_path(assigns(:schematic))
  end

  test "should show schematic" do
    get :show, id: @schematic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schematic
    assert_response :success
  end

  test "should update schematic" do
    put :update, id: @schematic, schematic: { ComponentID: @schematic.ComponentID, ProductID: @schematic.ProductID }
    assert_redirected_to schematic_path(assigns(:schematic))
  end

  test "should destroy schematic" do
    assert_difference('Schematic.count', -1) do
      delete :destroy, id: @schematic
    end

    assert_redirected_to schematics_path
  end
end
