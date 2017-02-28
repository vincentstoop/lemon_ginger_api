class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new
    if @photo.save(photo_params)
      redirect_to photo_path
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      redirect_to photo_path, notice: 'Photo replaced'
    else
      redirect_to root_path
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    if params[:controller] == "photos"
      redirect_to information_path, notice: 'Photo deleted'
    else
      redirect_to root_path, notice: 'Photo deleted'
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:image)
  end


end
