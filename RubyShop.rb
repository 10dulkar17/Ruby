
milks  = 3.97
breads =  2.17
bananas = 0.99
apples = 0.89

milk_quantity = 0
bread_quantity = 0
apple_quantity = 0
banana_quantity = 0

print "\nPlease enter all the items purchased separated by a comma: \n\n"
STDOUT.flush
list_of_items = STDIN.gets.chomp.split(/,/).map(&:to_s)

list_quantity = list_of_items.count

for i in 0..list_quantity

  if list_of_items[i] == "milk"
    milk_quantity += 1
  end

  if list_of_items[i] == "bread"
    bread_quantity += 1
  end

  if list_of_items[i] == "apple"
    apple_quantity += 1
  end

  if list_of_items[i] == "banana"
    banana_quantity += 1
  end


end

#logic
rem_milk = milk_quantity%2
rem_bread = bread_quantity%3

d_milk = milk_quantity/2
d_bread = bread_quantity/3

#product prices
price_milk = rem_milk.to_i*3.97 + d_milk.to_i*5.00
price_bread = rem_bread.to_i*2.17 + d_bread.to_i*6.00
price_banana = banana_quantity.to_i*0.99
price_apple = apple_quantity.to_i*0.89

#savings
milk_savings = milk_quantity.to_i*3.97 - price_milk.to_f
bread_savings = bread_quantity.to_i*2.17 - price_bread.to_f

#total price
total_price = price_milk.to_f + price_bread.to_f + price_banana.to_f + price_apple.to_f
total_price = (total_price.to_f).round(2)
total_savings = milk_savings.to_f + bread_savings.to_f
total_savings = (total_savings.to_f).round(2)

puts " "
puts "Item     Quantity             price"
puts "--------------------------------------"
puts "Milk        " + milk_quantity.to_s + "                 $" + price_milk.to_s
puts "Bread       " + bread_quantity.to_s + "                 $" + price_bread.to_s
puts "Apple       " + apple_quantity.to_s + "                 $" + price_apple.to_s
puts "Banana      " + banana_quantity.to_s + "                 $" + price_banana.to_s

puts "\n Total price :  $" + total_price.to_s
puts " You saved :    $" + total_savings.to_s + " today."
