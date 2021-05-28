class GuestReservationController < ApplicationController
  def index
    x = nil
    if params[:payload] == "1"
      x = {
        "reservation":{
          "start_date":"2020-03-12",
          "end_date":"2020-03-16",
          "expected_payout_amount":"3200.00",
          "guest_details":{
            "localized_description":"2 guests",
            "number_of_adults":2,
            "number_of_children":2,
            "number_of_infants":0
          },
          "guest_email":"seth_legaspi@test.com",
          "guest_first_name":"seth",
          "guest_id":1,
          "guest_last_name":"legaspi",
          "guest_phone_numbers":[
            "639123456789",
            "639123456789"
          ],
          "listing_security_price_accurate":"500.00",
          "host_currency":"PHP",
          "nights":4,
          "number_of_guests":4,
          "status_type":"accepted",
          "total_paid_amount_accurate":"4500.00"
        }
      }
      x = x[:reservation]
      x[:guest_record_id] = x[:guest_id]
    elsif params[:payload] == "2"
      x = {
        "start_date":"2020-03-12",
        "end_date":"2020-03-16",
        "nights":4,
        "guests":4,
        "adults":2,
        "children":2,
        "infants":0,
        "status":"accepted",
        "guest":{
          "id":1,
          "first_name":"Potato",
          "last_name":"Tomato",
          "phone":"639123456789",
          "email":"potato_tomato@farm.com"
        },
        "currency":"USD",
        "payout_price":"3800.00",
        "security_price":"500",
        "total_price":"4500.00"
      }
      x[:guest_record_id] = x[:guest][:id]
    end
    unless x.nil?
      newReservation = GuestReservation.new(x)
      newReservation.save
    end
  end
end
