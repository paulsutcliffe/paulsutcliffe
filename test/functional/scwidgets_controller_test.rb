require 'test_helper'

class ScwidgetsControllerTest < ActionController::TestCase
  setup do
    @scwidget = scwidgets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scwidgets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scwidget" do
    assert_difference('Scwidget.count') do
      post :create, :scwidget => @scwidget.attributes
    end

    assert_redirected_to scwidget_path(assigns(:scwidget))
  end

  test "should show scwidget" do
    get :show, :id => @scwidget.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @scwidget.to_param
    assert_response :success
  end

  test "should update scwidget" do
    put :update, :id => @scwidget.to_param, :scwidget => @scwidget.attributes
    assert_redirected_to scwidget_path(assigns(:scwidget))
  end

  test "should destroy scwidget" do
    assert_difference('Scwidget.count', -1) do
      delete :destroy, :id => @scwidget.to_param
    end

    assert_redirected_to scwidgets_path
  end
end
