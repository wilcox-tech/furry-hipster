class Page < ActiveRecord::Base
  attr_accessible :content, :excerpt, :slug, :tagline, :title
end
