# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# p = Patient.create(first_name: "Prénom", last_name: "Nom")
# d = Doctor.create(first_name: "Pierre", last_name: "Cassin", speciality: "generalist", zip_code: '82000')
# a = a = Appointment.create(date: Date.tomorrow, doctor: d, patient: p)
require 'faker'

puts "======== SEEDING ========"
# puts "----- models : #destroy_all --------"
# Patient.destroy_all
# Doctor.destroy_all
# Appointment.destroy_all
# City.destroy_all

# # création des patients
# 30.times do |i|
#   Patient.create(
#     first_name: Faker::Name.first_name, 
#     last_name: Faker::Name.last_name
#     )
# end

# puts "----- 30 patients créés --------"

# #création des doctors
# 10.times do |i|
#   Doctor.create(
#     first_name: Faker::Name.first_name, 
#     last_name: Faker::Name.last_name,
#     speciality: ["généraliste", "généraliste", "ophtalmologiste", "dermatologue", "ORL", "Cardiologue", "Rhumatologue"].sample,
#     zip_code: Faker::Address.zip_code.split('-').first
#     )
# end

# puts "----- 10 doctors créés --------"

# # Création des appointments

# 50.times do |i|
#   Appointment.create(
#     date: Faker::Date.between(from: Faker::Date.backward(days: 365), to: Faker::Date.forward(days: 90)), 
#     doctor: Doctor.find(rand(Doctor.first.id..Doctor.last.id)), 
#     patient: Patient.find(rand(Patient.first.id..Patient.last.id))
#     )
# end

# puts "----- 50 appointments créés --------"


10.times do |i|
  City.create(
    zip_code: Doctor.find(i+1).zip_code,
    name: Faker::Address.city
  )
end
puts "----- 10 cities créés --------"
puts "======== END OF SEEDING ========"