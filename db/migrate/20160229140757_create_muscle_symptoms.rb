class CreateMuscleSymptoms < ActiveRecord::Migration
  def change
    create_table :muscle_symptoms do |t|

      t.timestamps null: false
    end
  end
end
