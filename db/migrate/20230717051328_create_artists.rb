class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string "artist_name", null: false
      t.string "artist_image", null: false
      t.string "spotify_id", null: false
      t.timestamps
    end
  end
end
