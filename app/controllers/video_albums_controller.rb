class VideoAlbumsController < ApplicationController
  before_action :authenticate_user!

  def index
    @video_albums = current_user.video_albums
  end

  def show 
    @video_album = VideoAlbum.find(params[:id])
  end 

  def new
    @video_album = current_user.video_albums.new
  end

  def create 
    @video_album = current_user.video_albums.new(video_album_params)
    if  @video_album.save
      redirect_to video_albums_path
      else
        render :new
    end
  end

  def edit
    @video_album = current_user.video_albums.find(params[:id])
  end

  def update
    @video_album= current_user.video_albums.find(params[:id])
    if  @video_album.update(video_album_params)
      redirect_to  @video_album
      else
        render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @video_album = current_user.video_albums.find(params[:id])
    @video_album.destroy
    redirect_to video_albums_path, status: :see_other
  end

  private
  def video_album_params
    params.require(:video_album).permit(:title, :desc, :thumbnail,:video, :Published, :tag_list)
  end
end