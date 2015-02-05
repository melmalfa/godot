require 'pry'
require 'pg'

pg_conn = PG.connect(dbname: 'shopping_db')

#======================
# Starter Data
#======================
stores = ["Street Vendor", "The White House Gift Shop", "Nordstrom Rack", "The Cake Ambiance"]

quantities = [5, 10, 15, 2, 7]

prices = [4.99, 9.99, 50.00, 75.00, 100.00]

items = [
  "Gummy Cola Bottle",
  "Guava Candy",
  "Taco",
  "Bibimbop",
  "Burrito",
  "Channa Masala",
  "Lettuce Wrap",
  "PIZZA",
  "Cheese",
  "(Disney Soundtrack)",
  "Whiskey",
  "Athletic Socks",
  "Teach Like a Champion",
  "Practice Perfect"
]

# 5.times do
# pg_conn.exec_params("INSERT INTO receipts(store, item, number_of_items, price, buy_date) VALUES($1, $2, $3, $4, $5);", [stores.sample, items.sample, quantities.sample, prices.sample, 'February 4, 2015'])
# end

 # pg_conn.exec("UPDATE receipts SET item = 'Giants Jersey' WHERE id = 15;")

 pg_conn.exec("UPDATE receipts SET price = 350 WHERE id = 1;")

# Peter calls again: he went over his monthly budget, and immediately felt bad about the purchases he made on his shopping spree, so he went around randomly returning 8 of his purchases. Thus, make 8 random returns in your Ruby program. Reflect this in the database.
8.times do
pg_conn.exec_params("UPDATE receipts SET price = 0, returned = true WHERE id = $1;", [rand(1..19)])
end


# sears_purchases.each do |sears_purchase|
#   puts "Peter bought a #{sears_purchase['item']} from Sears for #{sears_purchase['price']}."
# end



pg_conn.close




