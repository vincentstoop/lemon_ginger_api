class Admin::ProductsController < Admin::BaseController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path, notice: 'Ingredient was saved.'
    else
      redirect_to admin_products_path, alert: "Ingredient couldn't be saved."
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to admin_products_path, notice: 'Product was updated.'
    else
      render :index, alert: "Product couldn't be updated."
    end
  end

  def destroy
    product = Product.find(params[:id])

    if product.destroy
      redirect_to admin_products_path, notice: 'Product was deleted.'
    else
      redirect_to admin_products_path, alert: "Product couldn't be deleted."
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description)
  end
end
