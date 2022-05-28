class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.references :creator, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.datetime :datetime
      t.string :location
      t.integer :places
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
