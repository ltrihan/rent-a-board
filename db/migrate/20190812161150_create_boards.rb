class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :category
      t.string :photo
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
