class CreateGuestReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :guest_reservations do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :expected_payout_amount
      t.json :guest_details
      t.string :guest_email
      t.string :guest_first_name
      t.integer :guest_id
      t.string :guest_last_name
      t.string :guest_phone_numbers, default: [], array: true
      t.string :listing_security_price_accurate
      t.string :host_currency
      t.integer :nights
      t.integer :number_of_guests
      t.string :status_type
      t.string :total_paid_amount_accurate

      t.integer :guests
      t.integer :adults
      t.integer :children
      t.integer :infants
      t.string :status
      t.json :guest
      t.string :currency
      t.string :payout_price
      t.string :security_price
      t.string :total_price
      
      t.integer :guest_record_id
      
      t.timestamps
    end
  end
end
