require 'faker'

#Creating 10 doctors somewhere in the Faker world 
10.times do
  Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Beer.name, postal_code: Faker::Address.zip.scan(/\d/).join("").to_i)
end

#Creating 30 patients
30.times do
  Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

#Creating 40 appointments
40.times do
  Appointment.create(date: Date.new(2018,rand(8..12),rand(1..30)), doctor: Doctor.all.sample, patient: Patient.all.sample)
end
