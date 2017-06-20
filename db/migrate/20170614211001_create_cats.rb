class CreateCats < ActiveRecord::Migration[5.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.string :cavatar
      t.string :fav_toy
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
