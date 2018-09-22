class ProductsController < ApplicationController
  before_action :authorize, except: [:index, :show, :hide_details, :show_details]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html { redirect_to products_path }
      format.js
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      respond_to do |format|
        format.html { redirect_to product_path }
        format.js
      end
    else
      render :edit
    end
  end

  def show_details
    @product = Product.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def hide_details
    @product = Product.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
