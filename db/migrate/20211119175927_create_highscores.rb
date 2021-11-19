class CreateHighscores < ActiveRecord::Migration[6.1]
  def change
    create_table :highscores do |t|
      t.string :game_id
      t.string :user_id

      t.timestamps
    end
  end
end
