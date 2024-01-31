# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file
puts "Salespeople: #{Salesperson.all.count}"

# 2. insert 1-2 rows in salespeople table.

salesperson = Salesperson.new
salesperson["first_name"] = 'Jennie'
salesperson["last_name"] = "Chang"
salesperson["email"] = "ooxx.gmail.com"
salesperson.save

salesperson = Salesperson.new
salesperson["first_name"] = 'Jessie'
salesperson["last_name"] = "Chang"
salesperson["email"] = "##$$.gmail.com"
salesperson.save


# 3. write code to display how many salespeople rows are in the database

puts "Salesperson: #{Salesperson.all.count}"
# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
jennie = Salesperson.Find_by({"first_name" => "Jennie", "last_name" => "Chang"})
jennie["email"] = "ooxx%%@gmail.com"
jennie.save 

# CHALLENGE:
# 5. write code to display each salesperson's full name
puts "Salesperson: #{Salesperson.all.count}"

salespeople = Salespeople.all
for salesperson in salespeople
    puts "#{salesperson["first_name"], #{}"
end
# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
