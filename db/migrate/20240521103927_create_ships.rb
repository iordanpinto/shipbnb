class CreateShips < ActiveRecord::Migration[7.1]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :type
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
