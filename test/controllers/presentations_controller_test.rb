require 'test_helper'

class PresentationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get presentations_new_url
    assert_response :success
  end

  test "should get show" do
    get presentations_show_url
    assert_response :success
  end

  test "should get index" do
    get presentations_index_url
    assert_response :success
  end

  test "should get delete" do
    get presentations_delete_url
    assert_response :success
  end

  test "should get edit" do
    get presentations_edit_url
    assert_response :success
  end

end
