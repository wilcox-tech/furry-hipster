class Product < ActiveRecord::Base
  belongs_to :category
  
  attr_accessible :content, :excerpt, :slug, :tagline, :title
end
