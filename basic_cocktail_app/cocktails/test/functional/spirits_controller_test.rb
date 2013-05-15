require 'test_helper'

class SpiritsControllerTest < ActionController::TestCase
  setup do
    @spirit = spirits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spirits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spirit" do
    assert_difference('Spirit.count') do
      post :create, spirit: { name: @spirit.name, type: @spirit.type }
    end

    assert_redirected_to spirit_path(assigns(:spirit))
  end

  test "should show spirit" do
    get :show, id: @spirit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spirit
    assert_response :success
  end

  test "should update spirit" do
    put :update, id: @spirit, spirit: { name: @spirit.name, type: @spirit.type }
    assert_redirected_to spirit_path(assigns(:spirit))
  end

  test "should destroy spirit" do
    assert_difference('Spirit.count', -1) do
      delete :destroy, id: @spirit
    end

    assert_redirected_to spirits_path
  end
end
