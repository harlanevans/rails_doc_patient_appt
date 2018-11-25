5.times do
  doctor = Doctor.create(
    name: Faker::Name.name 
  )
 
  5.times do 
    patient = Patient.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
    )
    rand(1...5).times do
    Appointment.create(
      date: Faker::Date.forward(60).to_date,
      time: Faker::Time.forward(2, :morning),
      patient_id: patient.id,
      doctor_id: doctor.id
    )
    end
  end
end

puts "Data Seeded."