class HighscoreSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :user_id
end
