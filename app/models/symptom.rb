class Symptom < ActiveRecord::Base
  has_many :muscles_symptoms
  has_many :muscles, through: :muscle_symptoms
end

