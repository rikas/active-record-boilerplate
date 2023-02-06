class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      # t.datetime :created_at
      # t.datetime :updated_at
      t.timestamps # it will add created_at and updated_at
    end
  end
end
