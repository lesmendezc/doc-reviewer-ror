# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{name: 'Admin', role: 'admin', email: 'admin@gmail.com', password: '123456', username: 'admincito'},
    { name: 'Juan Pablo', lastname: 'Sandoval', role: 'docente', email: 'sandoval@gmail.com', password: '123456', username: 'sandoval'},
    { name: 'Maria', lastname: 'Vargas', role: 'tutor', email: 'maria1@gmail.com', password: '123456', username: 'vargas'},
    { name: 'Victor', lastname: 'Vazquez', role: 'relator', email: 'victor@gmail.com', password: '123456', username: 'vazquez'},
    { name: 'Pepito', lastname: 'Perez', career: 'comercial', phone: '4433221', email: 'pepito@gmail.com', password: '123456', role: 'estudiante', username: 'pepito'}
])