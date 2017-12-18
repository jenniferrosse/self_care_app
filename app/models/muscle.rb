class Muscle < ActiveRecord::Base
  has_many :muscles_symptoms
  has_many :symptoms, through: :muscle_symptoms

  def self.search(search)
    where("name ILIKE ? OR symptoms ILIKE ? OR activation ILIKE ? OR common_diagnoses ILIKE ? OR lifestyle_considerations ILIKE ? OR quick_reference ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
 
  end

  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      muscle_hash = row.to_hash 
      muscle = Muscle.where(id: muscle_hash["id"])

      if muscle.count == 1
        muscle.first.update_attributes(muscle_hash)
      else
        Muscle.create!(muscle_hash)
      end # end if !muscle.nil?
    end # end CSV.foreach
  end # end self.import(file)


end
