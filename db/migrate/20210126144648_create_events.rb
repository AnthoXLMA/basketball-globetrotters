class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :date
      t.integer :price
      t.integer :reward

      t.timestamps
    end
  end
end
