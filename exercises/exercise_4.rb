require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
puts 'createing new tables'
burnaby = Store.create(:name => "Surrey",    :annual_revenue => 224000,  :mens_apparel => false,  :womens_apparel => true)
richmond = Store.create(:name => "Whistler",  :annual_revenue => 1900000, :mens_apparel => true, :womens_apparel => false)
gastown = Store.create(:name => "Yaletown",    :annual_revenue => 430000,  :mens_apparel => true,  :womens_apparel => true)

puts 'selecting stores which sell mans apparel'
@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each { |item| puts "#{item.name}'s' revenue: #{item.annual_revenue}"}

puts "load stores that carry women's apparel and are generating less than $1M in annual revenue"
@womens_stores = Store.where(["womens_apparel = ? and annual_revenue < ?", true,  1000000])
