require "application_system_test_case"

class FliesTest < ApplicationSystemTestCase
  setup do
    @fly = flies(:one)
  end

  test "visiting the index" do
    visit flies_url
    assert_selector "h1", text: "Flies"
  end

  test "creating a Fly" do
    visit flies_url
    click_on "New Fly"

    fill_in "Description", with: @fly.description
    fill_in "Name", with: @fly.name
    fill_in "Photo", with: @fly.photo
    click_on "Create Fly"

    assert_text "Fly was successfully created"
    click_on "Back"
  end

  test "updating a Fly" do
    visit flies_url
    click_on "Edit", match: :first

    fill_in "Description", with: @fly.description
    fill_in "Name", with: @fly.name
    fill_in "Photo", with: @fly.photo
    click_on "Update Fly"

    assert_text "Fly was successfully updated"
    click_on "Back"
  end

  test "destroying a Fly" do
    visit flies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fly was successfully destroyed"
  end
end
