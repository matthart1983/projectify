require 'test_helper'

class ActionItemsControllerTest < ActionController::TestCase
  setup do
    @action_item = action_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:action_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create action_item" do
    assert_difference('ActionItem.count') do
      post :create, action_item: { assignee: @action_item.assignee, description: @action_item.description, dueDate: @action_item.dueDate, project: @action_item.project }
    end

    assert_redirected_to action_item_path(assigns(:action_item))
  end

  test "should show action_item" do
    get :show, id: @action_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @action_item
    assert_response :success
  end

  test "should update action_item" do
    patch :update, id: @action_item, action_item: { assignee: @action_item.assignee, description: @action_item.description, dueDate: @action_item.dueDate, project: @action_item.project }
    assert_redirected_to action_item_path(assigns(:action_item))
  end

  test "should destroy action_item" do
    assert_difference('ActionItem.count', -1) do
      delete :destroy, id: @action_item
    end

    assert_redirected_to action_items_path
  end
end
