class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.references :user, foreign_key: true
      t.string :img_url

      t.timestamps
    end
  end
end

