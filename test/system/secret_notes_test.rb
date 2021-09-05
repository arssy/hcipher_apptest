require "application_system_test_case"

class SecretNotesTest < ApplicationSystemTestCase
  setup do
    @secret_note = secret_notes(:one)
  end

  test "visiting the index" do
    visit secret_notes_url
    assert_selector "h1", text: "Secret Notes"
  end

  test "creating a Secret note" do
    visit secret_notes_url
    click_on "New Secret Note"

    fill_in "Note", with: @secret_note.note
    fill_in "Title", with: @secret_note.title
    click_on "Create Secret note"

    assert_text "Secret note was successfully created"
    click_on "Back"
  end

  test "updating a Secret note" do
    visit secret_notes_url
    click_on "Edit", match: :first

    fill_in "Note", with: @secret_note.note
    fill_in "Title", with: @secret_note.title
    click_on "Update Secret note"

    assert_text "Secret note was successfully updated"
    click_on "Back"
  end

  test "destroying a Secret note" do
    visit secret_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Secret note was successfully destroyed"
  end
end
