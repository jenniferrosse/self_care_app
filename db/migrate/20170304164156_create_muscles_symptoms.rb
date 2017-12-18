class CreateMusclesSymptoms < ActiveRecord::Migration
  def change
    create_table :muscles_symptoms do |t|
      t.string :sort_order
      t.references :muscle, index: true, foreign_key: true
      t.references :symptom, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
