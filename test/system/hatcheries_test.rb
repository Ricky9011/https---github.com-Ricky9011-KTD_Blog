require "application_system_test_case"

class HatcheriesTest < ApplicationSystemTestCase
  setup do
    @hatchery = hatcheries(:one)
  end

  test "visiting the index" do
    visit hatcheries_url
    assert_selector "h1", text: "Hatcheries"
  end

  test "should create hatchery" do
    visit hatcheries_url
    click_on "New hatchery"

    fill_in "Description", with: @hatchery.description
    fill_in "History", with: @hatchery.history
    fill_in "Name", with: @hatchery.name
    click_on "Create Hatchery"

    assert_text "Hatchery was successfully created"
    click_on "Back"
  end

  test "should update Hatchery" do
    visit hatchery_url(@hatchery)
    click_on "Edit this hatchery", match: :first

    fill_in "Description", with: @hatchery.description
    fill_in "History", with: @hatchery.history
    fill_in "Name", with: @hatchery.name
    click_on "Update Hatchery"

    assert_text "Hatchery was successfully updated"
    click_on "Back"
  end

  test "should destroy Hatchery" do
    visit hatchery_url(@hatchery)
    click_on "Destroy this hatchery", match: :first

    assert_text "Hatchery was successfully destroyed"
  end
end
