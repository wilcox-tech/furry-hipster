require 'spec_helper'

describe Category do
  it "should not allow two categories with the same name" do
    category = FactoryGirl.create(:category)
    expect { FactoryGirl.create(:category) }.to raise_error
  end
end
