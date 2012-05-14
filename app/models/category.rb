class Category < ActiveRecord::Base
  attr_accessible :tagline, :title, :slug
  
  validates :title, :presence => true
  validates :slug, :presence => true, :uniqueness => true
end