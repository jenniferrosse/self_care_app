class AlterColumnsMuscles < ActiveRecord::Migration
  def change
    change_column :muscles, :muscle_number, 
      'integer USING CAST(muscle_number AS integer)'
  end
end
