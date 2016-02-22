class AddQuickReferenceToMuscles < ActiveRecord::Migration
  def change
    add_column :muscles, :quick_reference, :text
  end
end
