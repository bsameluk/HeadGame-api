# == Schema Information
#
# Table name: games
#
#  id                :bigint           not null, primary key
#  name              :string
#  number_of_words   :integer
#  seconds_per_round :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Game < ApplicationRecord

  # associations
  has_many :teams, dependent: :destroy
  has_many :game_progresses, dependent: :destroy
  has_many :game_words, dependent: :destroy

  # validations
  validates :name, presence: true
  validates :number_of_words, presence: true
  validates :seconds_per_round, presence: true

end
