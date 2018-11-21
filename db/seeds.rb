dates = ['January', 'December']
2.times do
  doctor = Doctor.create(
    name: Faker::Name.doctor
  )
 
  5.times do 
    patient = Patient.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
    )

    Assignment.create(
      date: dates.sample,
      time: times.sample,
      doctor_id: doctor.id,
      patient_id: patient.id
    )
  end
end

puts "Data Seeded."