# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_user
    10.times do |n|
        User.create!(
            email: "user#{n}@mail.com",
            password: "oussama"
        )
    end
    p "10 User  mdp:oussama"
end

def create_product
    10.times do |n|
        Product.create!(
            name: "Produit n°#{n}",
            price: 10,
            available: true,
            description: "description seeds random content"
        )
    end
    p "10 Produits"
end

def destroy_all
    User.destroy_all
    Product.destroy_all
    p "All Destroy"
end

def perform
    destroy_all
    create_user
    create_product
end

perform
