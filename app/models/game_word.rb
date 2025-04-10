# == Schema Information
#
# Table name: game_words
#
#  id         :bigint           not null, primary key
#  word       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  game_id    :bigint           not null
#
# Indexes
#
#  index_game_words_on_game_id  (game_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#
class GameWord < ApplicationRecord

  # associations
  belongs_to :game
  has_many :game_histories, dependent: :destroy

  # validations
  validates :word, presence: true, uniqueness: { scope: :game_id }
  
end
