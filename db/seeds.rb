puts "🌱 Seeding spices..."

# Seed your database here
10.times do
    doctor = Doctor.create(
        name: Faker::Name.name, 
        contact: Faker::Contact.contact
    )
end

puts "✅ Done seeding!"
