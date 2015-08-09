require 'test_helper'

class UserListControllerTest < ActionController::TestCase
  test "should get name:" do
    get :name:
    assert_response :success
  end

  test "should get string" do
    get :string
    assert_response :success
  end

  test "should get address:" do
    get :address:
    assert_response :success
  end

  test "should get string" do
    get :string
    assert_response :success
  end

  test "should get city:" do
    get :city:
    assert_response :success
  end

  test "should get string" do
    get :string
    assert_response :success
  end

  test "should get zip:" do
    get :zip:
    assert_response :success
  end

  test "should get integer" do
    get :integer
    assert_response :success
  end

  test "should get school:" do
    get :school:
    assert_response :success
  end

  test "should get string" do
    get :string
    assert_response :success
  end

  test "should get experience:" do
    get :experience:
    assert_response :success
  end

  test "should get integer" do
    get :integer
    assert_response :success
  end

end
