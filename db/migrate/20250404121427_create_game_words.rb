class CreateGameWords < ActiveRecord::Migration[7.1]
  def change
    create_table :game_words do |t|
      t.references :game, null: false, foreign_key: true
      t.string :word
      
      t.timestamps
    end
  end
end
