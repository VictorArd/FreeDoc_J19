# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do 
  d = Doctor.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.middle_name, 
    specialty: Faker::Job.position, 
    zip_code: Faker::Address.zip
    )

  p = Patient.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.middle_name
    )

  a = Appointment.create(
    date: Faker::Date.forward(30),
    doctor: d, 
    patient: p
    )
end
p "creation de 10 RDV docteurs patients"
