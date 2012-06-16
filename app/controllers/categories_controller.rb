class CategoriesController < ApplicationController
  def show
    @category = Category.find_by_slug(params[:slug])
    render :file => 'public/404.html', :status => 404 and return if @category.nil?
  end
end
