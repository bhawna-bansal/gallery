class AddPublishedToVideoAlbums < ActiveRecord::Migration[7.0]
  def change
    add_column :video_albums, :Published, :boolean
  end
end
