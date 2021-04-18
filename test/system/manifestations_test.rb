require "application_system_test_case"

class ManifestationsTest < ApplicationSystemTestCase
  setup do
    @manifestation = manifestations(:one)
  end

  test "visiting the index" do
    visit manifestations_url
    assert_selector "h1", text: "Manifestations"
  end

  test "creating a Manifestation" do
    visit manifestations_url
    click_on "New Manifestation"

    fill_in "Note", with: @manifestation.note
    fill_in "Original title", with: @manifestation.original_title
    click_on "Create Manifestation"

    assert_text "Manifestation was successfully created"
    click_on "Back"
  end

  test "updating a Manifestation" do
    visit manifestations_url
    click_on "Edit", match: :first

    fill_in "Note", with: @manifestation.note
    fill_in "Original title", with: @manifestation.original_title
    click_on "Update Manifestation"

    assert_text "Manifestation was successfully updated"
    click_on "Back"
  end

  test "destroying a Manifestation" do
    visit manifestations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manifestation was successfully destroyed"
  end
end
