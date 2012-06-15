class DetailPage < ActiveRecord::Base
  belongs_to :product
  
  attr_accessible :content, :slug, :subtitle, :title
end
