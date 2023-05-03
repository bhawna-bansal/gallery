class AddUserIdToVideoAlbums < ActiveRecord::Migration[7.0]
  def change
    add_reference :video_albums, :user, foreign_key: true
  end
end
