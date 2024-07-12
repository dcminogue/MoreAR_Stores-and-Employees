require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# Load the first store from the database and assign it to @store1
@store1 = Store.find(1)

# Load the second store from the database and assign it to @store2
@store2 = Store.find(2)

# Output the details of @store1 and @store2 to confirm
puts "Store 1 details: #{@store1.inspect}"
puts "Store 2 details: #{@store2.inspect}"

# Update the first store's name
@store1.update(name: "Stardust")

# Output the updated details of @store1 to confirm the change
puts "Updated Store 1 details: #{@store1.inspect}"
