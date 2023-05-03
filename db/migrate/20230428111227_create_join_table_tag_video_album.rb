class CreateJoinTableTagVideoAlbum < ActiveRecord::Migration[7.0]
  def change
    create_join_table :tags, :video_albums do |t|
      # t.index [:tag_id, :video_album_id]
      # t.index [:video_album_id, :tag_id]
    end
  end
end
