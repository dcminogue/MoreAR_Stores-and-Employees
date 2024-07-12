require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Create 3 more stores
Store.create(name: "Starliner", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Starlight", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Starbright", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Fetch only those stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Loop through each of these stores and output their name and annual revenue
@mens_stores.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

# Fetch stores that carry women's apparel and are generating less than $1M in annual revenue
@womens_stores_under_1m = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)

# Output their name and annual revenue
@womens_stores_under_1m.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end
