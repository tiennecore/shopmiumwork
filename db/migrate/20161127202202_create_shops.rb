class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :chain
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.string :address
      t.string :city
      t.integer :zip
      t.integer :phone
      t.string :country_code
      t.boolean :my_list

      t.timestamps null: false
    end
  end
end
