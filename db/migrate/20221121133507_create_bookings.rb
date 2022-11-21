class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :review
      t.integer :rating
      t.date :start_date
      t.date :end_date
      t.integer :total_price
      t.string :status
      t.references :offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
