class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :city
      t.string :suburb
      t.integer :postcode

      t.timestamps null: false
    end
  end
end
