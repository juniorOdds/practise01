require "test_helper"

class FriendlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friendlist = friendlists(:one)
  end

  test "should get index" do
    get friendlists_url
    assert_response :success
  end

  test "should get new" do
    get new_friendlist_url
    assert_response :success
  end

  test "should create friendlist" do
    assert_difference("Friendlist.count") do
      post friendlists_url, params: { friendlist: { name: @friendlist.name } }
    end

    assert_redirected_to friendlist_url(Friendlist.last)
  end

  test "should show friendlist" do
    get friendlist_url(@friendlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_friendlist_url(@friendlist)
    assert_response :success
  end

  test "should update friendlist" do
    patch friendlist_url(@friendlist), params: { friendlist: { name: @friendlist.name } }
    assert_redirected_to friendlist_url(@friendlist)
  end

  test "should destroy friendlist" do
    assert_difference("Friendlist.count", -1) do
      delete friendlist_url(@friendlist)
    end

    assert_redirected_to friendlists_url
  end
end
