class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :address

      t.timestamps
    end
  end
end
