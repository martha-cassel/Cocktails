class CreateMixes < ActiveRecord::Migration
  def change
    create_table :mixes do |t|
      t.integer :drink_id
      t.integer :mixable_id
      t.string :mixable_type

      t.timestamps
    end
  end
end
