class CreateGameProgresses < ActiveRecord::Migration[7.1]
  def change
    create_table :game_progresses do |t|
      t.references :game, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true

      t.integer :round_number
      t.integer :seconds_per_round
      t.integer :used_seconds
      t.string :status, default: "active", null: false
      
      
      

      t.timestamps
    end
  end
end
