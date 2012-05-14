require 'spec_helper'

describe "category display page" do
  it "should display a category with its title" do
    @category = FactoryGirl.create(:category)
    visit "/#{@category.slug}"
    page.should have_content @category.title
  end
end
