class PhotosController < ApplicationController

  def create
    @photo = Photo.new
    if @photo.save(photo_params)
      redirect_to photo_path
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @recipe = @photo.recipe
    @photo.destroy
    @photos = Photo.where(recipe_id: @recipe.id)
      redirect_to recipe_path
  end

  private

  def photo_params
    params.require(:photo).permit(:image)
  end


end
