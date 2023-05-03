class CreateVideoAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :video_albums do |t|
      t.string :title
      t.string :desc
    

      t.timestamps
    end
  end
end
