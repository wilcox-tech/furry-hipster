require 'spec_helper'

describe "A user going to the front page" do
  it "should see the text 'Hello'" do
    visit "/"
    page.should have_content('Hello')
  end
end
