require 'test_helper'

class PetInfosControllerTest < ActionController::TestCase
  setup do
    @pet_info = pet_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pet_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pet_info" do
    assert_difference('PetInfo.count') do
      post :create, pet_info: { age: @pet_info.age, breed: @pet_info.breed, last_visited_date: @pet_info.last_visited_date, pet_name: @pet_info.pet_name, pet_type: @pet_info.pet_type, weight: @pet_info.weight }
    end

    assert_redirected_to pet_info_path(assigns(:pet_info))
  end

  test "should show pet_info" do
    get :show, id: @pet_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pet_info
    assert_response :success
  end

  test "should update pet_info" do
    patch :update, id: @pet_info, pet_info: { age: @pet_info.age, breed: @pet_info.breed, last_visited_date: @pet_info.last_visited_date, pet_name: @pet_info.pet_name, pet_type: @pet_info.pet_type, weight: @pet_info.weight }
    assert_redirected_to pet_info_path(assigns(:pet_info))
  end

  test "should destroy pet_info" do
    assert_difference('PetInfo.count', -1) do
      delete :destroy, id: @pet_info
    end

    assert_redirected_to pet_infos_path
  end
end
