require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Associations
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

# Create employees for @store1 (Burnaby)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 55)
@store1.employees.create(first_name: "Sam", last_name: "Smith", hourly_rate: 45)
@store1.employees.create(first_name: "Sara", last_name: "Johnson", hourly_rate: 48)

# Create employees for @store2 (Richmond)
@store2.employees.create(first_name: "Michael", last_name: "Jordan", hourly_rate: 65)
@store2.employees.create(first_name: "LeBron", last_name: "James", hourly_rate: 70)
@store2.employees.create(first_name: "Kobe", last_name: "Bryant", hourly_rate: 68)
@store2.employees.create(first_name: "Shaquille", last_name: "O'Neal", hourly_rate: 66)
@store2.employees.create(first_name: "Stephen", last_name: "Curry", hourly_rate: 67)
