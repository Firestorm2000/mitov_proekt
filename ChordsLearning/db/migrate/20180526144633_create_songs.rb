class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.integer :capo
      t.string :strumming
      t.text :chords
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
