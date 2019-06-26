require "application_system_test_case"

class ListingsTest < ApplicationSystemTestCase
  setup do
    @listing = listings(:one)
  end

  test "visiting the index" do
    visit listings_url
    assert_selector "h1", text: "Listings"
  end

  test "creating a Listing" do
    visit listings_url
    click_on "New Listing"

    fill_in "Condition", with: @listing.condition
    fill_in "Description", with: @listing.description
    fill_in "Engine", with: @listing.engine
    fill_in "Exterior color", with: @listing.exterior_color
    fill_in "Image url", with: @listing.image_url
    fill_in "Interior color", with: @listing.interior_color
    fill_in "Listing author", with: @listing.listing_author
    fill_in "Listing url", with: @listing.listing_url
    fill_in "Make", with: @listing.make
    fill_in "Mileage", with: @listing.mileage
    fill_in "Model", with: @listing.model
    fill_in "Original listing service", with: @listing.original_listing_service
    fill_in "Price", with: @listing.price
    fill_in "Status", with: @listing.status
    fill_in "Title", with: @listing.title
    fill_in "Transmission", with: @listing.transmission
    fill_in "Trim", with: @listing.trim
    fill_in "Vin", with: @listing.vin
    fill_in "Year", with: @listing.year
    click_on "Create Listing"

    assert_text "Listing was successfully created"
    click_on "Back"
  end

  test "updating a Listing" do
    visit listings_url
    click_on "Edit", match: :first

    fill_in "Condition", with: @listing.condition
    fill_in "Description", with: @listing.description
    fill_in "Engine", with: @listing.engine
    fill_in "Exterior color", with: @listing.exterior_color
    fill_in "Image url", with: @listing.image_url
    fill_in "Interior color", with: @listing.interior_color
    fill_in "Listing author", with: @listing.listing_author
    fill_in "Listing url", with: @listing.listing_url
    fill_in "Make", with: @listing.make
    fill_in "Mileage", with: @listing.mileage
    fill_in "Model", with: @listing.model
    fill_in "Original listing service", with: @listing.original_listing_service
    fill_in "Price", with: @listing.price
    fill_in "Status", with: @listing.status
    fill_in "Title", with: @listing.title
    fill_in "Transmission", with: @listing.transmission
    fill_in "Trim", with: @listing.trim
    fill_in "Vin", with: @listing.vin
    fill_in "Year", with: @listing.year
    click_on "Update Listing"

    assert_text "Listing was successfully updated"
    click_on "Back"
  end

  test "destroying a Listing" do
    visit listings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Listing was successfully destroyed"
  end
end
