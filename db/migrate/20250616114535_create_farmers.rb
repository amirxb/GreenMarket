class CreateFarmers < ActiveRecord::Migration[7.1]
  def change
    create_table :farmers do |t|
      t.string :name
      t.string :location
      t.text :description
      t.string :contact_info

      t.timestamps
    end
  end
end
