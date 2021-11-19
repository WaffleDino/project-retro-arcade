class Game < ApplicationRecord
    has_many :highscores
    has_many :users, through: :highscores
end
