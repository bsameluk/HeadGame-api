# == Schema Information
#
# Table name: players
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  team_id    :bigint           not null
#
# Indexes
#
#  index_players_on_team_id  (team_id)
#
# Foreign Keys
#
#  fk_rails_...  (team_id => teams.id)
#
class Player < ApplicationRecord

  # associations
  belongs_to :team
  has_many :game_histories, dependent: :destroy
  has_many :game_progresses, dependent: :destroy

end
