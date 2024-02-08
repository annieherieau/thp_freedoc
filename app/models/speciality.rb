class Speciality < ApplicationRecord
  has_many :doctors, through: :appointments
end
