class AddFieldsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :dob, :date
    add_column :users, :role, :string
    add_column :users, :username, :string
  end
end
