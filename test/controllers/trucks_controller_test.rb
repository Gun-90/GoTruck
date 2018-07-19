require 'test_helper'

class TrucksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck = trucks(:one)
  end

  test "should get index" do
    get trucks_url
    assert_response :success
  end

  test "should get new" do
    get new_truck_url
    assert_response :success
  end

  test "should create truck" do
    assert_difference('Truck.count') do
      post trucks_url, params: { truck: { truck_category: @truck.truck_category, truck_cover: @truck.truck_cover, truck_name: @truck.truck_name, truck_phone: @truck.truck_phone, truck_sns2: @truck.truck_sns2, truck_sns: @truck.truck_sns, truck_x: @truck.truck_x, truck_y: @truck.truck_y } }
    end

    assert_redirected_to truck_url(Truck.last)
  end

  test "should show truck" do
    get truck_url(@truck)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_url(@truck)
    assert_response :success
  end

  test "should update truck" do
    patch truck_url(@truck), params: { truck: { truck_category: @truck.truck_category, truck_cover: @truck.truck_cover, truck_name: @truck.truck_name, truck_phone: @truck.truck_phone, truck_sns2: @truck.truck_sns2, truck_sns: @truck.truck_sns, truck_x: @truck.truck_x, truck_y: @truck.truck_y } }
    assert_redirected_to truck_url(@truck)
  end

  test "should destroy truck" do
    assert_difference('Truck.count', -1) do
      delete truck_url(@truck)
    end

    assert_redirected_to trucks_url
  end
end
