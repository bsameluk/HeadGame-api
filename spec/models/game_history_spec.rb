# == Schema Information
#
# Table name: game_histories
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  game_progress_id :bigint           not null
#  game_word_id     :bigint           not null
#  player_id        :bigint           not null
#
# Indexes
#
#  index_game_histories_on_game_progress_id  (game_progress_id)
#  index_game_histories_on_game_word_id      (game_word_id)
#  index_game_histories_on_player_id         (player_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_progress_id => game_progresses.id)
#  fk_rails_...  (game_word_id => game_words.id)
#  fk_rails_...  (player_id => players.id)
#
require 'rails_helper'

RSpec.describe GameHistory, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
