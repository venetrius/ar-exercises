require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Dub", last_name: "Dab", hourly_rate: 50)
@store1.employees.create(first_name: "Kir", last_name: "Lir", hourly_rate: 70)
@store1.employees.create(first_name: "Mer", last_name: "Bator", hourly_rate: 62)

@store2.employees.create(first_name: "Khrem", last_name: "Virani", hourly_rate: 56)
@store2.employees.create(first_name: "Dweub", last_name: "Darwb", hourly_rate: 43)
@store2.employees.create(first_name: "Kreir", last_name: "Liwer", hourly_rate: 54)
@store2.employees.create(first_name: "Mtrgher", last_name: "Baer", hourly_rate: 78)
#tring to add an employee without a  Store, has to fail
Employee.create(first_name: "Mtrgher", last_name: "Baer", hourly_rate: 78)
puts Employee.count
