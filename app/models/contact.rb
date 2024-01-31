class Contact < ApplicationRecord
    def change
        create_table :contacts do |t|
            t.string "first-name"
            t.strong "last_name"
            t.strong "email"
            t.string "company_id"

            t.timestamps
        end
    end        
end         
