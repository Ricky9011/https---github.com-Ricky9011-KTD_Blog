require "application_system_test_case"

class BreedersTest < ApplicationSystemTestCase
  setup do
    @breeder = breeders(:one)
  end

  test "visiting the index" do
    visit breeders_url
    assert_selector "h1", text: "Breeders"
  end

  test "should create breeder" do
    visit breeders_url
    click_on "New breeder"

    fill_in "Description", with: @breeder.description
    fill_in "History", with: @breeder.history
    fill_in "Name", with: @breeder.name
    click_on "Create Breeder"

    assert_text "Breeder was successfully created"
    click_on "Back"
  end

  test "should update Breeder" do
    visit breeder_url(@breeder)
    click_on "Edit this breeder", match: :first

    fill_in "Description", with: @breeder.description
    fill_in "History", with: @breeder.history
    fill_in "Name", with: @breeder.name
    click_on "Update Breeder"

    assert_text "Breeder was successfully updated"
    click_on "Back"
  end

  test "should destroy Breeder" do
    visit breeder_url(@breeder)
    click_on "Destroy this breeder", match: :first

    assert_text "Breeder was successfully destroyed"
  end
end
