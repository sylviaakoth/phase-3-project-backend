puts "🌱 Seeding spices..."

# Seed your database here
puts "Deleting old data..."
Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
# Specialist.destroy_all

puts "Done deleting"

6.times do
    doctor = Doctor.create(
        name: Faker::Name.name, 
        contact: Faker::Internet.email
        # speciality_id: specialist.id,
        # appointment_id: appointment.id
    )
    patient = Patient.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        gender: Faker::Gender.binary_type,
        age: rand(10..50),
        # appointment_id: Appointment.id
    )
   
end

Appointment.create(doctor_id: 3, patient_id: 4)
Appointment.create(doctor_id: 3, patient_id: 3)
Appointment.create(doctor_id: 2, patient_id: 1)
Appointment.create(doctor_id: 1, patient_id: 2)
Appointment.create(doctor_id: 4, patient_id: 2)
Appointment.create(doctor_id: 5, patient_id: 1)
Appointment.create(doctor_id: 5, patient_id: 4)
Appointment.create(doctor_id: 3, patient_id: 2)


# dentist, pediatrician, ophthalmologist, cardiologist,neurologist,dermatologist,psychiatrist

# Specialist.create(specialist: "dentist", doctor_id: 1)
# Specialist.create(specialist: "pediatrician", doctor_id: 1)
# Specialist.create(specialist: "ophthalmologist", doctor_id: 2)
# Specialist.create(specialist: "cardiologist", doctor_id: 3)
# Specialist.create(specialist: "neurologist", doctor_id: 4)
# Specialist.create(specialist: "dermatologist", doctor_id: 5)
# Specialist.create(specialist: "psychiatrist", doctor_id: 5)


puts "✅ Done seeding!"
