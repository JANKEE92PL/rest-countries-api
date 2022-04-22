class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :native_name
      t.float :population
      t.string :region
      t.string :sub_region
      t.string :capital
      t.string :tld
      t.string :currencies
      t.string :languages
      t.string :border_countries

      t.timestamps
    end
  end
end
