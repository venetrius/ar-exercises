require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
sum_of_annual_revenues = Store.sum(:annual_revenue)
average_annual_revenue = sum_of_annual_revenues / Store.count
puts "sum of annual revenues : #{sum_of_annual_revenues}"
puts "the average annual revenue : #{average_annual_revenue}"