class Admin::PhotosController < Admin::ApplicationController
  def destroy
    @photo = Photo.find(params[:id])
    @recipe = @photo.recipe

    @photo.destroy

    redirect_to edit_recipe_path(@recipe), notice: "Photo successfully removed"
  end
  private
end
