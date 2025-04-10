class CreateGameHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :game_histories do |t|
      t.references :player, null: false, foreign_key: true
      # t.references :game_progress, null: false, foreign_key: true
      # t.references :game_word, null: false, foreign_key: true 
      
      t.timestamps
    end
  end
end
