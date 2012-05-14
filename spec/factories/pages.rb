# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :page do
    title "Page Title"
    tagline "A page's tagline."
    slug "page_title"
    excerpt "The page is about blah and blah."
    content "Lorem ipsum dolar sit amet.."
  end
end
