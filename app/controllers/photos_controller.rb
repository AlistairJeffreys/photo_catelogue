class PhotosController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  
  def index
    @photo = Photo.new if logged_in?
    @photos = Photo.all.paginate(page: params[:page])
  end
  
  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photo_catalogue_path
    else
      render 'static_pages/home'
    end
  end
  
  def destroy
    Photo.find_by(id: params[:id]).destroy
    redirect_to photo_catalogue_path
  end
  
  private
  
    def photo_params
      params.require(:photo).permit(:subject, :caption, :picture)
    end
end
