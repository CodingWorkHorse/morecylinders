require 'test_helper'

class DreamcarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dreamcar = dreamcars(:one)
  end

  test "should get index" do
    get dreamcars_url
    assert_response :success
  end

  test "should get new" do
    get new_dreamcar_url
    assert_response :success
  end

  test "should create dreamcar" do
    assert_difference('Dreamcar.count') do
      post dreamcars_url, params: { dreamcar: { engine: @dreamcar.engine, exterior_color: @dreamcar.exterior_color, extra_column: @dreamcar.extra_column, interior_color: @dreamcar.interior_color, price: @dreamcar.price, transmisson: @dreamcar.transmisson, trim: @dreamcar.trim, user: @dreamcar.user, year: @dreamcar.year } }
    end

    assert_redirected_to dreamcar_url(Dreamcar.last)
  end

  test "should show dreamcar" do
    get dreamcar_url(@dreamcar)
    assert_response :success
  end

  test "should get edit" do
    get edit_dreamcar_url(@dreamcar)
    assert_response :success
  end

  test "should update dreamcar" do
    patch dreamcar_url(@dreamcar), params: { dreamcar: { engine: @dreamcar.engine, exterior_color: @dreamcar.exterior_color, extra_column: @dreamcar.extra_column, interior_color: @dreamcar.interior_color, price: @dreamcar.price, transmisson: @dreamcar.transmisson, trim: @dreamcar.trim, user: @dreamcar.user, year: @dreamcar.year } }
    assert_redirected_to dreamcar_url(@dreamcar)
  end

  test "should destroy dreamcar" do
    assert_difference('Dreamcar.count', -1) do
      delete dreamcar_url(@dreamcar)
    end

    assert_redirected_to dreamcars_url
  end
end
