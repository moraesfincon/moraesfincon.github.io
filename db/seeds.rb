# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create(
  email: 'admin@tracertag.com',
  password: 'mudarsenha123456*',
  password_confirmation: 'mudarsenha123456*'
)

AdminUser.create(
  email: 'diego@startamus.com.br',
  password: 'kika1984*',
  password_confirmation: 'kika1984*'
)
