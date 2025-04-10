class AddGameProgressAndWordReferencesToGameHistory < ActiveRecord::Migration[7.1]
  def change
    add_reference :game_histories, :game_progress, null: false, foreign_key: true
    add_reference :game_histories, :game_word, null: false, foreign_key: true
  end
end
