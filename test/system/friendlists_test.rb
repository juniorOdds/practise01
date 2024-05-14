require "application_system_test_case"

class FriendlistsTest < ApplicationSystemTestCase
  setup do
    @friendlist = friendlists(:one)
  end

  test "visiting the index" do
    visit friendlists_url
    assert_selector "h1", text: "Friendlists"
  end

  test "should create friendlist" do
    visit friendlists_url
    click_on "New friendlist"

    fill_in "Name", with: @friendlist.name
    click_on "Create Friendlist"

    assert_text "Friendlist was successfully created"
    click_on "Back"
  end

  test "should update Friendlist" do
    visit friendlist_url(@friendlist)
    click_on "Edit this friendlist", match: :first

    fill_in "Name", with: @friendlist.name
    click_on "Update Friendlist"

    assert_text "Friendlist was successfully updated"
    click_on "Back"
  end

  test "should destroy Friendlist" do
    visit friendlist_url(@friendlist)
    click_on "Destroy this friendlist", match: :first

    assert_text "Friendlist was successfully destroyed"
  end
end
