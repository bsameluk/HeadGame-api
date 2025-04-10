class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.references :game, null: false, foreign_key: true
      t.string :name
      
      t.timestamps
    end
  end
end
