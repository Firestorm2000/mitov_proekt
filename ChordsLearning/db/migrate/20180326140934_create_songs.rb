class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.text :chords
      t.text :strumming
      t.integer :capo
      t.integer :level
      t.timestamps
    end
  end
end
