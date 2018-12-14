# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{name: 'Juan Pablo', lastname: 'Sandoval Alcocer', role: 'admin', email: 'sandoval@ucb.edu.bo', career: 'Ing. Sistemas', password: '.sandoval.', username: 'sandoval', professor_role: true},
             {name: 'Tatiana', lastname: 'Aparicio', role: 'docente', email: 'aparicio@ucb.edu.bo', career: 'Ing. Sistemas', password: 'password', username: 'tatiana', professor_role: true},
             {name: 'Javier', lastname: 'Vildozo', role: 'estudiante', email: 'javier@vildozo.bo', career: 'Ing. Sistemas', password: 'password', username: 'javier', professor_role: false}])
event = Event.create({name: 'Primera Revisión Perfil', year: '2018', career: 'Ing. de Sistemas'})
survey = Survey.create({name: 'Perfil en fase #1', event_id: event.id})
selectOptionQuestion = Questions::SelectOption.create({description: 'Introducción', survey_id: survey.id})
textQuestion = Questions::Text.create({description: 'Antecedentes', survey_id: survey.id})