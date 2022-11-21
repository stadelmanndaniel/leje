class ChangeDataTypeForDescrptionInOffers < ActiveRecord::Migration[7.0]
  def change
    change_column :offers, :description, :text
  end
end
