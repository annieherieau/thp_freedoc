class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  belongs_to :city, optional: false
  has_many :specialities, through: :appointments
end
