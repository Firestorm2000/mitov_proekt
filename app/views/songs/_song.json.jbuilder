json.extract! song, :id, :name, :artist, :capo, :strumming, :chords, :user_id, :created_at, :updated_at
json.url song_url(song, format: :json)
