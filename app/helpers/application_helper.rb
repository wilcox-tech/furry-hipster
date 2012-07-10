module ApplicationHelper
  def markdownify(text)
    BlueCloth.new(text).to_html.html_safe
  end
  
  def make_sidebar_for(product)
    sidebar = '<ul class="nav nav-list">'
    sidebar += "#{active_link_to product.title, category_product_path(product.category.slug, product.slug), :active => :exclusive, :wrap_tag => :li}"
    product.detail_pages.each {|page| sidebar += "#{active_link_to page.title, category_product_detail_page_path(product.category.slug, product.slug, page.slug), :wrap_tag => :li}"}
    sidebar += "</ul>"
    sidebar.html_safe
  end
end
