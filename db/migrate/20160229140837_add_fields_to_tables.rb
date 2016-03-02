class AddFieldsToTables < ActiveRecord::Migration
  def change
    add_column :symptoms, :name, :string
    add_column :symptoms, :description, :text
    add_column :muscle_symptoms, :sort_order, :string
  end
end
