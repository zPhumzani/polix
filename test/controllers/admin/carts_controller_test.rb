require 'test_helper'

class Admin::CartsControllerTest < ActionController::TestCase
  setup do
    @admin_cart = admin_carts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_carts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_cart" do
    assert_difference('Admin::Cart.count') do
      post :create, admin_cart: {  }
    end

    assert_redirected_to admin_cart_path(assigns(:admin_cart))
  end

  test "should show admin_cart" do
    get :show, id: @admin_cart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_cart
    assert_response :success
  end

  test "should update admin_cart" do
    patch :update, id: @admin_cart, admin_cart: {  }
    assert_redirected_to admin_cart_path(assigns(:admin_cart))
  end

  test "should destroy admin_cart" do
    assert_difference('Admin::Cart.count', -1) do
      delete :destroy, id: @admin_cart
    end

    assert_redirected_to admin_carts_path
  end
end
