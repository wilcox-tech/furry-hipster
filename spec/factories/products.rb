# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    title "Product Name"
    tagline "A product's tagline."
    slug "product_name"
    excerpt "The product is fort blah and blah."
    content "Lorem ipsum dolar sit amet.."
  end
end
