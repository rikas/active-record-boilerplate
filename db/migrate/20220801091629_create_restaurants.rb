class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      # id primary key will be added automatically
      t.string :name
      t.string :address

      # t.date :created_at
      # t.date :updated_at
      t.timestamps # same as the 2 rows above
    end
  end
end

# AR will expect
# Model name  | Table name
# Restaurant  | restaurants
