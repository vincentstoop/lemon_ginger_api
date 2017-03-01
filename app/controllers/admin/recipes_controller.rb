class Admin::RecipesController < Admin::BaseController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = current_admin.recipes.build
    @recipe.ingredients.build
    @products = Product.all
    @recipe.cooking_steps.build
  end

  def create
    debugger
    @recipe = current_admin.recipes.new(recipe_params)

    if @recipe.save
      photo_params.each do |image|
        @recipe.photos.create(image: image)
      end

      redirect_to admin_recipe_path(@recipe), notice: 'Recipe was added!'
    else
      @recipe.ingredients.build
      @products = Product.all
      @recipe.cooking_steps.build
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe = Recipe.find(params[:id])

    if recipe.update(recipe_params)
      redirect_to admin_recipes_path, notice: 'Recipe was updated.'
    else
      render :edit
    end
  end

  def destroy
    recipe = Recipe.find(params[:id])

    if recipe.destroy
      redirect_to admin_recipes_path, notice: 'Recipe was deleted.'
    else
      redirect_to admin_recipes_path, alert: "Recipe couldn't be deleted."
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :subtitle, :intro, :cooking_time, :persons, :photo,
    ingredients_attributes: [:id, :product_id, :amount, :optional, :destroy], cooking_steps_attributes: [:title, :description, :cooking_time, :destroy])
  end

  def photo_params
      params[:photos].present? ? params.require(:photos) : []
  end

end
