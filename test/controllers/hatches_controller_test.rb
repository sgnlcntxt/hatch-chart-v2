require "test_helper"

class HatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hatch = hatches(:one)
  end

  test "should get index" do
    get hatches_url
    assert_response :success
  end

  test "should get new" do
    get new_hatch_url
    assert_response :success
  end

  test "should create hatch" do
    assert_difference('Hatch.count') do
      post hatches_url, params: { hatch: { bug_id: @hatch.bug_id, end_day: @hatch.end_day, end_month: @hatch.end_month, fishery_id: @hatch.fishery_id, maximum_size: @hatch.maximum_size, minimum_size: @hatch.minimum_size, start_day: @hatch.start_day, start_month: @hatch.start_month } }
    end

    assert_redirected_to hatch_url(Hatch.last)
  end

  test "should show hatch" do
    get hatch_url(@hatch)
    assert_response :success
  end

  test "should get edit" do
    get edit_hatch_url(@hatch)
    assert_response :success
  end

  test "should update hatch" do
    patch hatch_url(@hatch), params: { hatch: { bug_id: @hatch.bug_id, end_day: @hatch.end_day, end_month: @hatch.end_month, fishery_id: @hatch.fishery_id, maximum_size: @hatch.maximum_size, minimum_size: @hatch.minimum_size, start_day: @hatch.start_day, start_month: @hatch.start_month } }
    assert_redirected_to hatch_url(@hatch)
  end

  test "should destroy hatch" do
    assert_difference('Hatch.count', -1) do
      delete hatch_url(@hatch)
    end

    assert_redirected_to hatches_url
  end
end
