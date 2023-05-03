class HomeController < ApplicationController
  def index 
    @video_albums = VideoAlbum.where(Published: true)
    @q = @video_albums.ransack(params[:q])
    @video_albums = @q.result.uniq
  end
end
