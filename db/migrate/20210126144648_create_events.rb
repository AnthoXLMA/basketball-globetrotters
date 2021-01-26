class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :type
      t.string :location
      t.string :playground
      t.string :date
      t.integer :price
      t.integer :reward

      t.timestamps
    end
  end
end
