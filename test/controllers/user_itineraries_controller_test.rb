require 'test_helper'

class UserItinerariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_itinerary = user_itineraries(:one)
  end

  test "should get index" do
    get user_itineraries_url
    assert_response :success
  end

  test "should get new" do
    get new_user_itinerary_url
    assert_response :success
  end

  test "should create user_itinerary" do
    assert_difference('UserItinerary.count') do
      post user_itineraries_url, params: { user_itinerary: { belongs_to: @user_itinerary.belongs_to, belongs_to: @user_itinerary.belongs_to } }
    end

    assert_redirected_to user_itinerary_url(UserItinerary.last)
  end

  test "should show user_itinerary" do
    get user_itinerary_url(@user_itinerary)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_itinerary_url(@user_itinerary)
    assert_response :success
  end

  test "should update user_itinerary" do
    patch user_itinerary_url(@user_itinerary), params: { user_itinerary: { belongs_to: @user_itinerary.belongs_to, belongs_to: @user_itinerary.belongs_to } }
    assert_redirected_to user_itinerary_url(@user_itinerary)
  end

  test "should destroy user_itinerary" do
    assert_difference('UserItinerary.count', -1) do
      delete user_itinerary_url(@user_itinerary)
    end

    assert_redirected_to user_itineraries_url
  end
end
