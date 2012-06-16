class DetailPagesController < ApplicationController
  def show
    category = Category.find_by_slug(params[:category])
    render :file => "public/404.html", :status => 404 and return if category.nil?
    
    @product = Product.find_by_slug_and_category_id(params[:product], category.id)
    render :file => "public/404.html", :status => 404 and return if @product.nil?
    
    @detail_page = DetailPage.find_by_slug_and_product_id(params[:slug], @product.id)
    render :file => "public/404.html", :status => 404 and return if @detail_page.nil?
  end
end
