# == Schema Information
#
# Table name: game_progresses
#
#  id                :bigint           not null, primary key
#  round_number      :integer
#  seconds_per_round :integer
#  status            :string           default("active"), not null
#  used_seconds      :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  game_id           :bigint           not null
#  player_id         :bigint           not null
#
# Indexes
#
#  index_game_progresses_on_game_id    (game_id)
#  index_game_progresses_on_player_id  (player_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#  fk_rails_...  (player_id => players.id)
#
require 'rails_helper'

RSpec.describe GameProgress, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
