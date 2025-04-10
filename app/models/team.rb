# == Schema Information
#
# Table name: teams
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  game_id    :bigint           not null
#
# Indexes
#
#  index_teams_on_game_id  (game_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#
class Team < ApplicationRecord

  # associations
  belongs_to :game
  has_many :players, dependent: :destroy

  # validations
  validates :name, presence: true
  
end
