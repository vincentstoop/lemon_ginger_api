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
    @recipe = current_admin.recipes.new(recipe_params)

    if @recipe.save
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
  # <ActionController::Parameters {"utf8"=>"✓", "authenticity_token"=>"N3HhcGW9k07GlkjxFYbFjXyEBw3iFsljVg2ya7RAWfpf5XQ0XlA71Z1649bVPvI9JOzsVKou9cCdJMowYNF0eA==", "recipe"=>{"title"=>"kip", "subtitle"=>"kippetje", "intro"=>"kippetje lekker yum", "cooking_time"=>"22", "persons"=>"2", "ingredients_attributes"=>{"0"=>{"amount"=>"4", "product_id"=>"2", "optional"=>"1"}}, "cooking_steps_attributes"=>{"0"=>{"title"=>"braden", "description"=>"kip met ei braden?", "cooking_time"=>"11"}}}, "images"=>[""], "commit"=>"Opslaan", "controller"=>"admin/recipes", "action"=>"create"} permitted: false>

  def recipe_params
    params.require(:recipe).permit(:title, :subtitle, :intro, :cooking_time, :persons, :photo,
    ingredients_attributes: [:id, :product_id, :amount, :optional], cooking_steps_attributes: [:title, :description, :cooking_time])
  end

end
