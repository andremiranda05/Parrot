require 'test_helper'

class EventPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_place = event_places(:one)
  end

  test "should get index" do
    get event_places_url
    assert_response :success
  end

  test "should get new" do
    get new_event_place_url
    assert_response :success
  end

  test "should create event_place" do
    assert_difference('EventPlace.count') do
      post event_places_url, params: { event_place: { bairro: @event_place.bairro, city: @event_place.city, estado: @event_place.estado, logradouro: @event_place.logradouro, name: @event_place.name, numero: @event_place.numero, referencia: @event_place.referencia } }
    end

    assert_redirected_to event_place_url(EventPlace.last)
  end

  test "should show event_place" do
    get event_place_url(@event_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_place_url(@event_place)
    assert_response :success
  end

  test "should update event_place" do
    patch event_place_url(@event_place), params: { event_place: { bairro: @event_place.bairro, city: @event_place.city, estado: @event_place.estado, logradouro: @event_place.logradouro, name: @event_place.name, numero: @event_place.numero, referencia: @event_place.referencia } }
    assert_redirected_to event_place_url(@event_place)
  end

  test "should destroy event_place" do
    assert_difference('EventPlace.count', -1) do
      delete event_place_url(@event_place)
    end

    assert_redirected_to event_places_url
  end
end
