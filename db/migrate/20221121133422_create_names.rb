class CreateNames < ActiveRecord::Migration[7.0]
  def change
    create_table :names do |t|
      t.integer :age

      t.timestamps
    end
  end
end
