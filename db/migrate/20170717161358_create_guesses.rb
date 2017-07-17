class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.string :input
      t.references :card, foreign_key: true, null: false
      t.references :game, foreign_key: true, null: false

      t.timestamps
    end
  end
end
