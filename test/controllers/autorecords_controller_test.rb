require 'test_helper'

class AutorecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autorecord = autorecords(:one)
  end

  test "should get index" do
    get autorecords_url, as: :json
    assert_response :success
  end

  test "should create autorecord" do
    assert_difference('Autorecord.count') do
      post autorecords_url, params: { autorecord: { automo_id: @autorecord.automo_id, avgambienttemp: @autorecord.avgambienttemp, avgengineload: @autorecord.avgengineload, avgenginetemp: @autorecord.avgenginetemp, avgspeed: @autorecord.avgspeed, avrmp: @autorecord.avrmp, barometricpressure: @autorecord.barometricpressure, fuelconsumption: @autorecord.fuelconsumption, hspeed: @autorecord.hspeed, runtime: @autorecord.runtime, trip_id: @autorecord.trip_id } }, as: :json
    end

    assert_response 201
  end

  test "should show autorecord" do
    get autorecord_url(@autorecord), as: :json
    assert_response :success
  end

  test "should update autorecord" do
    patch autorecord_url(@autorecord), params: { autorecord: { automo_id: @autorecord.automo_id, avgambienttemp: @autorecord.avgambienttemp, avgengineload: @autorecord.avgengineload, avgenginetemp: @autorecord.avgenginetemp, avgspeed: @autorecord.avgspeed, avrmp: @autorecord.avrmp, barometricpressure: @autorecord.barometricpressure, fuelconsumption: @autorecord.fuelconsumption, hspeed: @autorecord.hspeed, runtime: @autorecord.runtime, trip_id: @autorecord.trip_id } }, as: :json
    assert_response 200
  end

  test "should destroy autorecord" do
    assert_difference('Autorecord.count', -1) do
      delete autorecord_url(@autorecord), as: :json
    end

    assert_response 204
  end
end
