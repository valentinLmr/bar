require 'test_helper'

class DishescommandsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dishescommands_index_url
    assert_response :success
  end

  test "should get new" do
    get dishescommands_new_url
    assert_response :success
  end

  test "should get create" do
    get dishescommands_create_url
    assert_response :success
  end

  test "should get show" do
    get dishescommands_show_url
    assert_response :success
  end

  test "should get edit" do
    get dishescommands_edit_url
    assert_response :success
  end

  test "should get update" do
    get dishescommands_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dishescommands_destroy_url
    assert_response :success
  end

end
