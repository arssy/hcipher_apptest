require 'test_helper'

class SecretNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @secret_note = secret_notes(:one)
  end

  test "should get index" do
    get secret_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_secret_note_url
    assert_response :success
  end

  test "should create secret_note" do
    assert_difference('SecretNote.count') do
      post secret_notes_url, params: { secret_note: { note: @secret_note.note, title: @secret_note.title } }
    end

    assert_redirected_to secret_note_url(SecretNote.last)
  end

  test "should show secret_note" do
    get secret_note_url(@secret_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_secret_note_url(@secret_note)
    assert_response :success
  end

  test "should update secret_note" do
    patch secret_note_url(@secret_note), params: { secret_note: { note: @secret_note.note, title: @secret_note.title } }
    assert_redirected_to secret_note_url(@secret_note)
  end

  test "should destroy secret_note" do
    assert_difference('SecretNote.count', -1) do
      delete secret_note_url(@secret_note)
    end

    assert_redirected_to secret_notes_url
  end
end
