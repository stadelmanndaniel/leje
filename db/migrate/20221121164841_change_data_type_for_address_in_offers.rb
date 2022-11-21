class ChangeDataTypeForAddressInOffers < ActiveRecord::Migration[7.0]
  def change
    change_column :offers, :address, :string
  end
end
