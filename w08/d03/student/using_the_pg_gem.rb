require 'pry'
require 'pg'

#saves database connection to a variable so we can use it throughout our program
db_connection = PG.connect(dbname: 'shopping_db')

#these variables will store ruby values
store    = ["Sears", "Disney Store", "JC Penney"].sample
item     = ["Leather Marp", "Cotton Darp", "Almond Croissant"].sample
quantity = rand(1..5)
price    = rand(4.00..6.00).round(2)
date     = 'Feb 4 2015'
###########################################################################

# method exec is short for execute and we cancpass it a string of valid sql

# store      |           item           | number_of_items |  price  |  buy_date

# purchases = db_connection.exec("SELECT * FROM receipts;")

# sears_purchases = db_connection. exec("SELECT * FROM receipts WHERE store = 'Sears';")

# sears_purchases.each do |sears_purchase|
#   puts "Peter bought a #{sears_purchase['item']} from Sears for #{sears_purchase['price']}."
# end

# db_connection.exec("INSERT INTO receipts (store, item, number_of_items, price, buy_date) VALUES ('Target', 'Batman shirts', 3, 20, 'February 3 2015');")

# db_connection.exec("UPDATE receipts SET price = 0 WHERE id = 7;")

# db_connection.exec("ALTER TABLE receipts ADD COLUMN returned boolean default false;")

# db_connection.exec("UPDATE receipts SET returned = true WHERE id = 7;")

# db_connection.exec("UPDATE receipts SET store = 'JC Penney' WHERE store = 'JC Penny';")

# echnically, the __R__ in Toys R Us should be surrounded by double quotes. Update all relevant entries with the proper spelling of Toys "R" Us.

# db_connection.exec("UPDATE receipts SET store = 'Toys \"R\" Us' WHERE store = 'Toys R Us';")

# db_connection.exec("DELETE FROM receipts WHERE item = 'TMNT Collectors Set';")

sql_statement = "INSERT INTO receipts(store, item, number_of_items, price, buy_date) VALUES($1, $2, $3, $4, $5);"

# exec_params takes 2 arguments: statement, array of same number of items in the () where $num corresponds to items in the array
#use params when we don;t know what will be put into the values
#used when need to put dynamic values into sql
# db_connection.exec_params(sql_statement, [store, item, quantity, price, date])

random_id = rand(1..5)

# db_connection.exec_params("DELETE FROM receipts WHERE id = $1;", [random_id])

#to be safe, always close our db connections at the end of a program
db_connection.close



