class PhotosController < ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @photo = @recipe.photos.new(photo_params)
    @photo.recipe_id = params[:recipe_id]
    @photo.save
      redirect_to @photo.recipe
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
