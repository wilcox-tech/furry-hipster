class DetailPagesController < ApplicationController
  def show
    @product = Product.find_by_slug_and_category_id!(params[:product], Category.find_by_slug!(params[:category]).id)
    @detail_page = DetailPage.find_by_slug_and_product_id!(params[:slug], @product.id)
  end
end
