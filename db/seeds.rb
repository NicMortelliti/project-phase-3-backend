puts "🌱 Seeding spices..."

# Make 20 users
20.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
  )
end

# Make 50 tasks
50.times do
  # create a task with random data
  Task.create(
    description: "#{Faker::Hacker.verb} #{Faker::Hacker.adjective} #{Faker::Hacker.noun}",
    due_date: Faker::Date.between(from: 20.days.ago, to: 200.days.from_now),
    story_points: rand(1..20), # random number between 1 and 20
    project_id: rand(1..2), # random number between 1 and 2
    user_id: rand(0..20) # random number between 0 and 20. 0 means not assigned to a user.
  )
end

# Make 2 projects
2.times do
  # create a project with random data
  Project.create(
    name: Faker::Space.launch_vehicle
  )
end

puts "✅ Done seeding!"
