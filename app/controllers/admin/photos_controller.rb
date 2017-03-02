class Admin::PhotosController < Admin::ApplicationController
  def destroy
    debugger
    photo = Photo.find(params[:id])
    recipe = photo.recipe

    photo.destroy

    redirect_to edit_admin_recipe_path(recipe), notice: "Foto verwijderd."
  end
end
