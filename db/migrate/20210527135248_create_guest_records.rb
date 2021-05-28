class CreateGuestRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :guest_records do |t|

      t.timestamps
    end
    add_index :guest_reservations, :guest_id
  end
end
