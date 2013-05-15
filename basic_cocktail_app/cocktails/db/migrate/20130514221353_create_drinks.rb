class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.text :description
      t.text :variation_description
      t.string :image
      t.text :directions

      t.timestamps
    end
  end
end
