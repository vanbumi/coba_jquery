class CreateXservices < ActiveRecord::Migration
  def change
    create_table :xservices do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
