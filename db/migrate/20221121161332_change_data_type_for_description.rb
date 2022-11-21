class ChangeDataTypeForDescription < ActiveRecord::Migration[7.0]
  def change
    change_column :offers, :address, :text
    change_column :bookings, :review, :text
    add_reference :offers, :user, foreign_key: true
    add_reference :bookings, :user, foreign_key: true
    remove_reference :bookings, :offer, index: true, foreign_key: true
    add_reference :bookings, :offer, foreign_key: true
  end
end
