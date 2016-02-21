class CreateMuscles < ActiveRecord::Migration
  def change
    create_table :muscles do |t|
      t.string :name
      t.text :symptoms
      t.text :activation
      t.text :test

      t.timestamps null: false
    end
  end
end
