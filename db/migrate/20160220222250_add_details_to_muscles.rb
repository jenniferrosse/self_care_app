class AddDetailsToMuscles < ActiveRecord::Migration
  def change
    add_column :muscles, :common_diagnoses, :text
    add_column :muscles, :lifestyle_considerations, :text
    add_column :muscles, :self_care_treatment, :text
    add_column :muscles, :related_muscles, :text
  end
end
