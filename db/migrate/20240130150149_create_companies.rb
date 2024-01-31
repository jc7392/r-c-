class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string "name"
      t.string "city"
      t.string "state"
      t.string "url"
      t.timestamps
    end
  end
end

# equals to CREATE TABLE companies function in sql 