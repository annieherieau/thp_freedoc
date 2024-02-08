class Appointment < ApplicationRecord
  belongs_to :patient, optional: false
  belongs_to :doctor, optional: false
  belongs_to :city, optional: false
end
