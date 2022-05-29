class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.date :birth
      t.string :gender

      t.timestamps
    end
  end
end