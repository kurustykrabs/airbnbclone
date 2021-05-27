class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user
      t.datetime :start_date
      t.datetime :end_date
      t.integer :price
      t.integer :total
      t.timestamps
    end
  end
end
