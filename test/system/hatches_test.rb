require "application_system_test_case"

class HatchesTest < ApplicationSystemTestCase
  setup do
    @hatch = hatches(:one)
  end

  test "visiting the index" do
    visit hatches_url
    assert_selector "h1", text: "Hatches"
  end

  test "creating a Hatch" do
    visit hatches_url
    click_on "New Hatch"

    fill_in "Bug", with: @hatch.bug_id
    fill_in "End day", with: @hatch.end_day
    fill_in "End month", with: @hatch.end_month
    fill_in "Fishery", with: @hatch.fishery_id
    fill_in "Maximum size", with: @hatch.maximum_size
    fill_in "Minimum size", with: @hatch.minimum_size
    fill_in "Start day", with: @hatch.start_day
    fill_in "Start month", with: @hatch.start_month
    click_on "Create Hatch"

    assert_text "Hatch was successfully created"
    click_on "Back"
  end

  test "updating a Hatch" do
    visit hatches_url
    click_on "Edit", match: :first

    fill_in "Bug", with: @hatch.bug_id
    fill_in "End day", with: @hatch.end_day
    fill_in "End month", with: @hatch.end_month
    fill_in "Fishery", with: @hatch.fishery_id
    fill_in "Maximum size", with: @hatch.maximum_size
    fill_in "Minimum size", with: @hatch.minimum_size
    fill_in "Start day", with: @hatch.start_day
    fill_in "Start month", with: @hatch.start_month
    click_on "Update Hatch"

    assert_text "Hatch was successfully updated"
    click_on "Back"
  end

  test "destroying a Hatch" do
    visit hatches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hatch was successfully destroyed"
  end
end
