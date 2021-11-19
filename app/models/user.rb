class User < ApplicationRecord
    has_many :highscores
    has_many :games, through: :highscores
end
