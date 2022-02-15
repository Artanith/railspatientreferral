require "application_system_test_case"

class PracticesTest < ApplicationSystemTestCase
  setup do
    @practice = practices(:one)
  end

  test "visiting the index" do
    visit practices_url
    assert_selector "h1", text: "Practices"
  end

  test "should create practice" do
    visit practices_url
    click_on "New practice"

    fill_in "Address", with: @practice.address
    fill_in "City", with: @practice.city
    fill_in "Name", with: @practice.name
    fill_in "Phone", with: @practice.phone
    fill_in "State", with: @practice.state
    fill_in "Zip code", with: @practice.zip_code
    click_on "Create Practice"

    assert_text "Practice was successfully created"
    click_on "Back"
  end

  test "should update Practice" do
    visit practice_url(@practice)
    click_on "Edit this practice", match: :first

    fill_in "Address", with: @practice.address
    fill_in "City", with: @practice.city
    fill_in "Name", with: @practice.name
    fill_in "Phone", with: @practice.phone
    fill_in "State", with: @practice.state
    fill_in "Zip code", with: @practice.zip_code
    click_on "Update Practice"

    assert_text "Practice was successfully updated"
    click_on "Back"
  end

  test "should destroy Practice" do
    visit practice_url(@practice)
    click_on "Destroy this practice", match: :first

    assert_text "Practice was successfully destroyed"
  end
end
