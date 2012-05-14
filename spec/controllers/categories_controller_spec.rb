require 'spec_helper'

describe CategoriesController do

  describe "show method" do
    it "returns http success for valid category" do
      @category = FactoryGirl.create(:category)
      get 'show', {:slug => @category.slug}
      response.should be_success
    end
    
    it "returns error for invalid category" do
      expect { get 'show', {:slug => "doesnt_exist"} }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end

end
