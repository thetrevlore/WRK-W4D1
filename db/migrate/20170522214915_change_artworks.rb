class ChangeArtworks < ActiveRecord::Migration
  def change
    remove_index :artworks, name: "index_artworks_on_artist_id"
    add_index :artworks, :artist_id
  end
end
