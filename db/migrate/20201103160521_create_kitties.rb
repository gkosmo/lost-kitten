class CreateKitties < ActiveRecord::Migration[6.0]
  def change
    create_table :kitties do |t|
      t.string :address
      t.string :phone_number
      t.string :species
      t.string :image_url
      t.string :name
      t.date :found_on
      t.boolean :found, default: false


      t.timestamps
    end
  end
end
