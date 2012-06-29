class PressRelease < ActiveRecord::Base
  belongs_to :product
  
  attr_accessible :content, :headline, :subhead
end
