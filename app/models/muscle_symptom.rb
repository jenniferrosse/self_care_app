class MuscleSymptom < ActiveRecord::Base
  belongs_to :muscle
  belongs_to :symptom
end
