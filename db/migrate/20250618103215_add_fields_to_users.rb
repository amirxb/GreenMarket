class AddFieldsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string unless column_exists?(:users, :name)
    add_column :users, :surname, :string unless column_exists?(:users, :surname)
    add_column :users, :dob, :date unless column_exists?(:users, :dob)
    add_column :users, :role, :string unless column_exists?(:users, :role)
    add_column :users, :username, :string unless column_exists?(:users, :username)
  end
end
