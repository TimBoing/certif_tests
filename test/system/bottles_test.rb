require "application_system_test_case"

class BottlesTest < ApplicationSystemTestCase
  setup do
    @bottle = bottles(:one)
  end

  test "visiting the index" do
    visit bottles_url
    assert_selector "h1", text: "Bottles"
  end

  test "creating a Bottle" do
    visit bottles_url
    click_on "New Bottle"

    click_on "Create Bottle"

    assert_text "Bottle was successfully created"
    click_on "Back"
  end

  test "updating a Bottle" do
    visit bottles_url
    click_on "Edit", match: :first

    click_on "Update Bottle"

    assert_text "Bottle was successfully updated"
    click_on "Back"
  end

  test "destroying a Bottle" do
    visit bottles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bottle was successfully destroyed"
  end
end
