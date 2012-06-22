class ProductsController < ApplicationController
  def show
    category = Category.where('slug = :slug', :slug => params[:category]).limit(1)[0]
    render :file => "public/404.html", :status => 404 and return if category.nil?
    
    @product = Product.where('slug = :slug AND category_id = :category_id', :slug => params[:slug], :category_id => category.id).limit(1)[0]
    render :file => "public/404.html", :status => 404 and return if @product.nil?
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @product }
    end
  end
end
