class ProductsController < ApplicationController
  def show
    category = Category.find_by_slug(params[:category])
    render :file => "public/404.html", :status => 404 and return if category.nil?
    
    @product = Product.find_by_slug_and_category_id(params[:slug], category.id)
    render :file => "public/404.html", :status => 404 and return if @product.nil?
  end
end
