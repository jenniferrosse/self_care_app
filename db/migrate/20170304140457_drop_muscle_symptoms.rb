class DropMuscleSymptoms < ActiveRecord::Migration
  def change
    drop_table :muscle_symptoms
  end
end
