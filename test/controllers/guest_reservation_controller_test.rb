require "test_helper"

class GuestReservationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guest_reservation_index_url
    assert_response :success
  end
end
