class AddNotNullToNameInRestaurants < ActiveRecord::Migration[7.0]
  def change
    change_column :restaurants, :name, :string, null: false
  end
end
