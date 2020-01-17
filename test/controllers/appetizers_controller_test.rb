require 'test_helper'

class AppetizersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get appetizers_index_url
    assert_response :success
  end

  test "should get show" do
    get appetizers_show_url
    assert_response :success
  end

  test "should get new" do
    get appetizers_new_url
    assert_response :success
  end

  test "should get create" do
    get appetizers_create_url
    assert_response :success
  end

  test "should get edit" do
    get appetizers_edit_url
    assert_response :success
  end

  test "should get update" do
    get appetizers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get appetizers_destroy_url
    assert_response :success
  end

end
