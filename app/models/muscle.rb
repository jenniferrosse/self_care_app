class Muscle < ActiveRecord::Base

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
