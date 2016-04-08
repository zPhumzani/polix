require 'test_helper'

class Admin::LineItemsControllerTest < ActionController::TestCase
  setup do
    @admin_line_item = admin_line_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_line_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_line_item" do
    assert_difference('Admin::LineItem.count') do
      post :create, admin_line_item: { cart_id: @admin_line_item.cart_id, product_id: @admin_line_item.product_id }
    end

    assert_redirected_to admin_line_item_path(assigns(:admin_line_item))
  end

  test "should show admin_line_item" do
    get :show, id: @admin_line_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_line_item
    assert_response :success
  end

  test "should update admin_line_item" do
    patch :update, id: @admin_line_item, admin_line_item: { cart_id: @admin_line_item.cart_id, product_id: @admin_line_item.product_id }
    assert_redirected_to admin_line_item_path(assigns(:admin_line_item))
  end

  test "should destroy admin_line_item" do
    assert_difference('Admin::LineItem.count', -1) do
      delete :destroy, id: @admin_line_item
    end

    assert_redirected_to admin_line_items_path
  end
end
