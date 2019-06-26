require 'test_helper'

class ListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get listings_url
    assert_response :success
  end

  test "should get new" do
    get new_listing_url
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post listings_url, params: { listing: { condition: @listing.condition, description: @listing.description, engine: @listing.engine, exterior_color: @listing.exterior_color, image_url: @listing.image_url, interior_color: @listing.interior_color, listing_author: @listing.listing_author, listing_url: @listing.listing_url, make: @listing.make, mileage: @listing.mileage, model: @listing.model, original_listing_service: @listing.original_listing_service, price: @listing.price, status: @listing.status, title: @listing.title, transmission: @listing.transmission, trim: @listing.trim, vin: @listing.vin, year: @listing.year } }
    end

    assert_redirected_to listing_url(Listing.last)
  end

  test "should show listing" do
    get listing_url(@listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_listing_url(@listing)
    assert_response :success
  end

  test "should update listing" do
    patch listing_url(@listing), params: { listing: { condition: @listing.condition, description: @listing.description, engine: @listing.engine, exterior_color: @listing.exterior_color, image_url: @listing.image_url, interior_color: @listing.interior_color, listing_author: @listing.listing_author, listing_url: @listing.listing_url, make: @listing.make, mileage: @listing.mileage, model: @listing.model, original_listing_service: @listing.original_listing_service, price: @listing.price, status: @listing.status, title: @listing.title, transmission: @listing.transmission, trim: @listing.trim, vin: @listing.vin, year: @listing.year } }
    assert_redirected_to listing_url(@listing)
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete listing_url(@listing)
    end

    assert_redirected_to listings_url
  end
end
