require 'json'
path = File.join(File.dirname(__FILE__), '../data/products.json')
file = File.read(path)
products_hash = JSON.parse(file)

# Print today's date

puts "                     _            _       "
puts "                    | |          | |      "
puts " _ __  _ __ ___   __| |_   _  ___| |_ ___ "
puts "| '_ \\| '__/ _ \\ / _` | | | |/ __| __/ __|"
puts "| |_) | | | (_) | (_| | |_| | (__| |_\\__ \\"
puts "| .__/|_|  \\___/ \\__,_|\\__,_|\\___|\\__|___/"
puts "| |                                       "
puts "|_|                                       "


# For each product in the data set:
products_hash["items"].each do |toy|
  # Print the name of the toy
  toy_name = toy["title"]
  puts toy_name
  # Print the retail price of the toy
  retail_price = toy["full-price"]
  puts retail_price
  # Calculate and print the total number of purchases
  total_purchases = 0
  sales_amount = 0
  toy["purchases"].each do |purchase|
    total_purchases += 1
    sales_amount += purchase["price"]
  end
  puts total_purchases
  # Calculate and print the total amount of sales
  puts sales_amount
  # Calculate and print the average price the toy sold for
  average_price_paid = sales_amount / total_purchases
  puts average_price_paid
  # Calculate and print the average discount (% or $) based off the average sales price
  average_discount = retail_price.to_f - average_price_paid
  puts average_discount
end



puts " _                         _     "
puts "| |                       | |    "
puts "| |__  _ __ __ _ _ __   __| |___ "
puts "| '_ \\| '__/ _` | '_ \\ / _` / __|"
puts "| |_) | | | (_| | | | | (_| \\__ \\"
puts "|_.__/|_|  \\__,_|_| |_|\\__,_|___/"
puts ""

# For each brand in the data set:
  # Print the name of the brand
  # Count and print the number of the brand's toys we stock
  # Calculate and print the average price of the brand's toys
  # Calculate and print the total revenue of all the brand's toy sales combined
