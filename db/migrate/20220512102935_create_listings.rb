class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.references :profile, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.integer :price
      t.boolean :purchased

      t.timestamps
    end
  end
end
