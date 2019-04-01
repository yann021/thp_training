class Speciality < ApplicationRecord
  has_many :docspes
  has_many :doctors, through: :docspe
end
