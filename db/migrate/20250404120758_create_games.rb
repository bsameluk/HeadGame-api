class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :number_of_words
      t.integer :seconds_per_round
      
      t.timestamps
    end
  end
end
