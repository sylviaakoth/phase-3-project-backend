puts "🌱 Seeding spices..."

# Seed your database here
10.times do
    doctor = Doctor.create(
        name: Faker::Name.name, 
        contact: Faker::Contact.contact
    )
    patient = Patient.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        gender: Faker::Gender.gender,
        dob: Faker::Time.date
    )
end

puts "✅ Done seeding!"
