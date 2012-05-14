class PagesController < ApplicationController
  def show
    @page = Page.find_by_slug_and_category_id!(params[:slug], Category.find_by_slug!(params[:category]).id)
  end
end
