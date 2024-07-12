require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# Load the third store from the database and assign it to @store3
@store3 = Store.find(3)

# Output the details of @store3 to confirm
puts "Store 3 details: #{@store3.inspect}"

# Destroy the third store
@store3.destroy

# Verify that the store has been deleted by outputting the store count
puts "Number of stores after deletion: #{Store.count}"
