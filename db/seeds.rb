# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding required initial data..."

# Categories
# ----------
if !Rails.env.production? && Category.count.zero?
  categories = [
    {
      id: 1,
      name: "Novice"
    },
    {
      id: 2,
      name: "Atome"
    },
    {
      id: 3,
      name: "Pee-Wee"
    },
    {
      id: 4,
      name: "Male",
      ancestor_id: 3
    },
    {
      id: 5,
      name: "Female",
      ancestor_id: 3
    },
    {
      id: 6,
      name: "AA",
      ancestor_id: 4
    },
    {
      id: 7,
      name: "A",
      ancestor_id: 4
    },
    {
      id: 8,
      name: "B",
      ancestor_id: 4
    }
  ]

  categories.each do |category|
    Category.where(id: category[:id]).first_or_create(category)
  end
end

puts "Seeding completed!"
