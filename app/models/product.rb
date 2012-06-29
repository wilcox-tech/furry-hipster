class Product < ActiveRecord::Base
  belongs_to :category
  has_many :detail_pages, :dependent => :destroy
  has_many :press_releases
  
  attr_accessible :content, :excerpt, :slug, :tagline, :title
end
