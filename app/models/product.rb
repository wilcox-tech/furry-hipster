class Product < ActiveRecord::Base
  belongs_to :category
  has_many :detail_pages, :dependent => :destroy
  
  attr_accessible :content, :excerpt, :slug, :tagline, :title
end
