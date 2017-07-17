class Guess < ApplicationRecord
  belongs_to :card
  belongs_to :game
  has_many :guesses
end
