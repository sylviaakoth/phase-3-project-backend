puts "🌱 Seeding spices..."

# Seed your database here
puts "Deleting old data..."
Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
Specialist.destroy_all

puts "Done deleting"

# SET @num := 0;
# UPDATE your_table SET id = @num := (@num+1);
# ALTER TABLE tableName AUTO_INCREMENT = 1;

10.times do
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
    appointment = Appointment.create(
        patients_id: patient.id,
        doctors_id: doctor.id
    )
end


Specialist.create(speciality: "dentist")
Specialist.create(speciality: "pediatrician")
Specialist.create(speciality: "ophthalmologist")
Specialist.create(speciality: "cardiologist")
Specialist.create(speciality: "neurologist")
Specialist.create(speciality: "dermatologist")

puts "✅ Done seeding!"
