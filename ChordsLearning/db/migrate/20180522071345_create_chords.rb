class CreateChords < ActiveRecord::Migration[5.1]
  def change
    create_table :chords do |t|
      t.text :chord

      t.timestamps
    end
  end
end
