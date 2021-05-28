# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_27_135248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guest_records", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "guest_reservations", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "expected_payout_amount"
    t.json "guest_details"
    t.string "guest_email"
    t.string "guest_first_name"
    t.integer "guest_id"
    t.string "guest_last_name"
    t.string "guest_phone_numbers", default: [], array: true
    t.string "listing_security_price_accurate"
    t.string "host_currency"
    t.integer "nights"
    t.integer "number_of_guests"
    t.string "status_type"
    t.string "total_paid_amount_accurate"
    t.integer "guests"
    t.integer "adults"
    t.integer "children"
    t.integer "infants"
    t.string "status"
    t.json "guest"
    t.string "currency"
    t.string "payout_price"
    t.string "security_price"
    t.string "total_price"
    t.integer "guest_record_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["guest_id"], name: "index_guest_reservations_on_guest_id"
  end

end
