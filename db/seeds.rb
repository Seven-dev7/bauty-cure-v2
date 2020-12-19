# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_user
    10.times do |a|
        User.create!(
            email: "user#{a}@mail.com",
            password: "oussama"
        )
    end
    p "10 User crée mdp:oussama"
end

def destroy_all
    User.destroy_all
end

def perform
    destroy_all
    create_user
end

perform
