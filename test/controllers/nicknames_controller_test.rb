require 'test_helper'

class NicknamesControllerTest < ActionController::TestCase
  setup do
    @nickname = nicknames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nicknames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nickname" do
    assert_difference('Nickname.count') do
      post :create, nickname: { employee_id: @nickname.employee_id, first_name: @nickname.first_name, last_name: @nickname.last_name }
    end

    assert_redirected_to nickname_path(assigns(:nickname))
  end

  test "should show nickname" do
    get :show, id: @nickname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nickname
    assert_response :success
  end

  test "should update nickname" do
    patch :update, id: @nickname, nickname: { employee_id: @nickname.employee_id, first_name: @nickname.first_name, last_name: @nickname.last_name }
    assert_redirected_to nickname_path(assigns(:nickname))
  end

  test "should destroy nickname" do
    assert_difference('Nickname.count', -1) do
      delete :destroy, id: @nickname
    end

    assert_redirected_to nicknames_path
  end
end
