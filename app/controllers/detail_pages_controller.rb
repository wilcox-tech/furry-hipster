class DetailPagesController < ApplicationController
  def show
    category = Category.where(:slug => params[:category]).first
    render :file => "public/404.html", :status => 404 and return if category.nil?
    
    @product = Product.where(:slug => params[:product], :category_id => category.id).first
    render :file => "public/404.html", :status => 404 and return if @product.nil?
    
    @detail_page = DetailPage.where(:slug => params[:slug], :product_id => @product.id).first
    render :file => "public/404.html", :status => 404 and return if @detail_page.nil?
  end
end
