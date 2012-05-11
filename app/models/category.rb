class Category < ActiveRecord::Base
  attr_accessible :tagline, :title
  
  validates :title, :presence => true, :uniqueness => true
end
