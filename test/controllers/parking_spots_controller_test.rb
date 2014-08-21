require 'test_helper'

class ParkingSpotsControllerTest < ActionController::TestCase
  setup do
    @parking_spot = parking_spots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parking_spots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parking_spot" do
    assert_difference('ParkingSpot.count') do
      post :create, parking_spot: { city: @parking_spot.city, lat: @parking_spot.lat, lon: @parking_spot.lon, side: @parking_spot.side, spots: @parking_spot.spots, state: @parking_spot.state, street: @parking_spot.street, type: @parking_spot.type, zip: @parking_spot.zip }
    end

    assert_redirected_to parking_spot_path(assigns(:parking_spot))
  end

  test "should show parking_spot" do
    get :show, id: @parking_spot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parking_spot
    assert_response :success
  end

  test "should update parking_spot" do
    patch :update, id: @parking_spot, parking_spot: { city: @parking_spot.city, lat: @parking_spot.lat, lon: @parking_spot.lon, side: @parking_spot.side, spots: @parking_spot.spots, state: @parking_spot.state, street: @parking_spot.street, type: @parking_spot.type, zip: @parking_spot.zip }
    assert_redirected_to parking_spot_path(assigns(:parking_spot))
  end

  test "should destroy parking_spot" do
    assert_difference('ParkingSpot.count', -1) do
      delete :destroy, id: @parking_spot
    end

    assert_redirected_to parking_spots_path
  end
end
