class CreatePlaygrounds < ActiveRecord::Migration[6.0]
  def change
    create_table :playgrounds do |t|
      t.string :location
      t.string :reputation
      t.string :agenda
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
