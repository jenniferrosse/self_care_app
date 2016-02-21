class AddMuscleNumberToMuscles < ActiveRecord::Migration
  def change
    add_column :muscles, :muscle_number, :string
  end
end
