class AddRatingToRestaurants < ActiveRecord::Migration[7.0]
  def change
    # add_column :table, :field_name, :field_type, ....options
    add_column :restaurants, :rating, :integer
  end
end


