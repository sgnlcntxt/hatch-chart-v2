require "test_helper"

class FliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fly = flies(:one)
  end

  test "should get index" do
    get flies_url
    assert_response :success
  end

  test "should get new" do
    get new_fly_url
    assert_response :success
  end

  test "should create fly" do
    assert_difference('Fly.count') do
      post flies_url, params: { fly: { description: @fly.description, name: @fly.name, photo: @fly.photo } }
    end

    assert_redirected_to fly_url(Fly.last)
  end

  test "should show fly" do
    get fly_url(@fly)
    assert_response :success
  end

  test "should get edit" do
    get edit_fly_url(@fly)
    assert_response :success
  end

  test "should update fly" do
    patch fly_url(@fly), params: { fly: { description: @fly.description, name: @fly.name, photo: @fly.photo } }
    assert_redirected_to fly_url(@fly)
  end

  test "should destroy fly" do
    assert_difference('Fly.count', -1) do
      delete fly_url(@fly)
    end

    assert_redirected_to flies_url
  end
end
