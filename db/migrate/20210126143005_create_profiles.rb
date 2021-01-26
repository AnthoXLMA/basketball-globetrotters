class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :nick_name
      t.integer :reputation
      t.string :location
      t.string :experience
      t.string :level
      t.integer :practice_time_per_week
      t.string :skills
      t.string :drills
      t.string :agenda
      t.string :story

      t.timestamps
    end
  end
end
