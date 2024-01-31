# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database
amazon = Company.find_by({"name" => "Amazon"})

# 1. insert new rows in the contacts table with relationship to a company
new_contact = Contact.new
new_contact["first_name"] = "Jeff"
new_contact["last_name"] = "Bezos"
new_contact["email"] = "Jeff.Bezos@com"
new_contact["company_id"] = amazon["id"]
new_contact.save

# 2. How many contacts work at Apple?
amazon_contacts = Contacts.where({"company_id" => amazon["id"]}) 
puts "Amazon contacts: #{amazon_contacts.count}"
# 3. What is the full name of each contact who works at Apple?
for contact in amazon_contacts
    puts "#{contact["first_name"]} #{contacts["last_name"]}"
end
