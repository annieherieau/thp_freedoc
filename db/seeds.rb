# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

puts "======== SEEDING ========"
# # puts "----- models : #destroy_all --------"
Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
City.destroy_all
Speciality.destroy_all

# # création des villes
10.times do |i|
  City.create(
    zip_code: Faker::Address.zip_code.split('-').first,
    name: Faker::Address.city
  )
end
puts "----- 10 cities créés --------"

# # création des spécialités
spec_array = ["Généraliste", "Ophtalmologiste", "Dermatologue", "ORL", "Cardiologue", "Rhumatologue"]
spec_array.each do |s|
  Speciality.create(
    name: s
  )
end
puts "----- 6 spécialités créés --------"

# création des patients
30.times do |i|
  Patient.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name,
    city: City.all.sample
    )
end

puts "----- 30 patients créés --------"

#création des doctors
10.times do |i|
  Doctor.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name,
    city: City.all.sample
    )
end

puts "----- 10 doctors créés --------"

# Création des appointments

50.times do |i|
  Appointment.create(
    date: Faker::Date.between(from: Faker::Date.backward(days: 365), to: Faker::Date.forward(days: 90)), 
    doctor: Doctor.all.sample, 
    patient: Patient.all.sample,
    city: City.all.sample,
    speciality: Speciality.all.sample
    )
end

puts "----- 50 appointments créés --------"

puts "======== END OF SEEDING ========"