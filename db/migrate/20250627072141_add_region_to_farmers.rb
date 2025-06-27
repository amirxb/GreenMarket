class AddRegionToFarmers < ActiveRecord::Migration[7.1]
  def change
    add_column :farmers, :region, :string
  end
end
