class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.references :user, foreign_key: true
      t.references :deck, foreign_key: true, null: false

      t.timestamps
    end
  end
end
