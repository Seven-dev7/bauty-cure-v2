# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_user
    10.times do |n|
        user = User.create!(
                email: "user#{n}@mail.com",
                password: "oussama"
                )
        UserInformation.create!(
            first_name: "First Name n °#{n}",
            last_name: "Last Name n °#{n}",
            address: "32 rue de la pompe",
            phone: "0625351254",
            city: "Paris",
            zip_code: "93000",
            country: "France",
            user_id: user.id
        )
    end
    p "10 User with 10 UserInfor connected  mdp:oussama"
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
    models = %w(User UserInformation Product)
    models.each {|model| model.constantize.destroy_all }
    p "All Destroy"
end

def perform
    destroy_all
    create_user
    create_product
end

perform
