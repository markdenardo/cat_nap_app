require 'test_helper'

class NapsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get naps_index_url
    assert_response :success
  end

  test "should get new" do
    get naps_new_url
    assert_response :success
  end

  test "should get create" do
    get naps_create_url
    assert_response :success
  end

  test "should get show" do
    get naps_show_url
    assert_response :success
  end

  test "should get edit" do
    get naps_edit_url
    assert_response :success
  end

  test "should get update" do
    get naps_update_url
    assert_response :success
  end

  test "should get destroy" do
    get naps_destroy_url
    assert_response :success
  end

end
