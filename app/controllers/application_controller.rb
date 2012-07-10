class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :categories
  
  def categories
    Category.all()
  end
end
