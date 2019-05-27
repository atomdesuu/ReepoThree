require 'test_helper'

class AutomosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @automo = automos(:one)
  end

  test "should get index" do
    get automos_url, as: :json
    assert_response :success
  end

  test "should create automo" do
    assert_difference('Automo.count') do
      post automos_url, params: { automo: { cargocapacity: @automo.cargocapacity, creator_id: @automo.creator_id, displacement: @automo.displacement, drivenwheels: @automo.drivenwheels, engineconfiguration: @automo.engineconfiguration, enginetype: @automo.enginetype, forcedinduction: @automo.forcedinduction, idle: @automo.idle, name: @automo.name, passengerseats: @automo.passengerseats, transmission: @automo.transmission, urgency: @automo.urgency, vinnumber: @automo.vinnumber } }, as: :json
    end

    assert_response 201
  end

  test "should show automo" do
    get automo_url(@automo), as: :json
    assert_response :success
  end

  test "should update automo" do
    patch automo_url(@automo), params: { automo: { cargocapacity: @automo.cargocapacity, creator_id: @automo.creator_id, displacement: @automo.displacement, drivenwheels: @automo.drivenwheels, engineconfiguration: @automo.engineconfiguration, enginetype: @automo.enginetype, forcedinduction: @automo.forcedinduction, idle: @automo.idle, name: @automo.name, passengerseats: @automo.passengerseats, transmission: @automo.transmission, urgency: @automo.urgency, vinnumber: @automo.vinnumber } }, as: :json
    assert_response 200
  end

  test "should destroy automo" do
    assert_difference('Automo.count', -1) do
      delete automo_url(@automo), as: :json
    end

    assert_response 204
  end
end
