class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.text :title, null: false
      t.text :image_url, null: false
      t.integer :artist_id, null: false

      t.timestamps
    end
    add_index :artworks, :artist_id, unique: true
  end
end
