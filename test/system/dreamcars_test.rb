require "application_system_test_case"

class DreamcarsTest < ApplicationSystemTestCase
  setup do
    @dreamcar = dreamcars(:one)
  end

  test "visiting the index" do
    visit dreamcars_url
    assert_selector "h1", text: "Dreamcars"
  end

  test "creating a Dreamcar" do
    visit dreamcars_url
    click_on "New Dreamcar"

    fill_in "Engine", with: @dreamcar.engine
    fill_in "Exterior color", with: @dreamcar.exterior_color
    fill_in "Extra column", with: @dreamcar.extra_column
    fill_in "Interior color", with: @dreamcar.interior_color
    fill_in "Price", with: @dreamcar.price
    fill_in "Transmisson", with: @dreamcar.transmisson
    fill_in "Trim", with: @dreamcar.trim
    fill_in "User", with: @dreamcar.user
    fill_in "Year", with: @dreamcar.year
    click_on "Create Dreamcar"

    assert_text "Dreamcar was successfully created"
    click_on "Back"
  end

  test "updating a Dreamcar" do
    visit dreamcars_url
    click_on "Edit", match: :first

    fill_in "Engine", with: @dreamcar.engine
    fill_in "Exterior color", with: @dreamcar.exterior_color
    fill_in "Extra column", with: @dreamcar.extra_column
    fill_in "Interior color", with: @dreamcar.interior_color
    fill_in "Price", with: @dreamcar.price
    fill_in "Transmisson", with: @dreamcar.transmisson
    fill_in "Trim", with: @dreamcar.trim
    fill_in "User", with: @dreamcar.user
    fill_in "Year", with: @dreamcar.year
    click_on "Update Dreamcar"

    assert_text "Dreamcar was successfully updated"
    click_on "Back"
  end

  test "destroying a Dreamcar" do
    visit dreamcars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dreamcar was successfully destroyed"
  end
end
