require 'test_helper'

class RbsControllerTest < ActionController::TestCase
  setup do
    @rb = rbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rb" do
    assert_difference('Rb.count') do
      post :create, rb: { rb_name: @rb.rb_name, rb_no: @rb.rb_no, toi_no: @rb.toi_no }
    end

    assert_redirected_to rb_path(assigns(:rb))
  end

  test "should show rb" do
    get :show, id: @rb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rb
    assert_response :success
  end

  test "should update rb" do
    patch :update, id: @rb, rb: { rb_name: @rb.rb_name, rb_no: @rb.rb_no, toi_no: @rb.toi_no }
    assert_redirected_to rb_path(assigns(:rb))
  end

  test "should destroy rb" do
    assert_difference('Rb.count', -1) do
      delete :destroy, id: @rb
    end

    assert_redirected_to rbs_path
  end
end
