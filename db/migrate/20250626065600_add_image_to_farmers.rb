class AddImageToFarmers < ActiveRecord::Migration[7.1]
  def change
    add_column :farmers, :image, :string
  end
end
