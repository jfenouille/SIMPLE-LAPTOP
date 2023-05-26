class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :destroy, :update, :edit]

  def index
    if params[:user_id]
      @products = Product.where(user_id: params[:user_id])
    else
      @products = Product.all
    end
  end

  def show
  end

  def new
    @product = Product.new
  end

  
  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :new
    end
  end


  def destroy
    @product.destroy
    redirect_to products_path, status: :see_other
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:brand, :price, :specs, :image_url, :user_id, :availability)
  end
end
