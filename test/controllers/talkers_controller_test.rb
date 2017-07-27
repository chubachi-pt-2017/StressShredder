require 'test_helper'

class TalkersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get talkers_index_url
    assert_response :success
  end

  test "should get add" do
    get talkers_add_url
    assert_response :success
  end

  test "should get edit" do
    get talkers_edit_url
    assert_response :success
  end

  test "should get list" do
    get talkers_list_url
    assert_response :success
  end

end
