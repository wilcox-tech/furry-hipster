class Category < ActiveRecord::Base
  has_many :products, :dependent => :destroy
  
  attr_accessible :tagline, :title, :slug
  
  validates :title, :presence => true
  validates :slug, :presence => true, :uniqueness => true
end
