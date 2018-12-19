# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{name: 'Juan Pablo', lastname: 'Sandoval Alcocer', professional_degree: 'Dr.', role: 'admin', email: 'sandoval@ucb.edu.bo', career: 'Ingeniería de Sistemas', password: '.sandoval.', username: 'sandoval', professor_role: true},
             {name: 'Tatiana', lastname: 'Aparicio', professional_degree: 'Mgr.', role: 'docente', email: 'aparicio@ucb.edu.bo', career: 'Ingeniería de Sistemas', password: 'password', username: 'tatiana'},
             {name: 'Javier', lastname: 'Vildozo', professional_degree: 'Mgr.', role: 'estudiante', email: 'javier@vildozo.bo', career: 'Ingeniería de Sistemas', password: 'password', username: 'javier'}])

event = Event.create({name: 'Primera Revisión Perfil', year: '2018', semester: 'Segundo', career: 'Ingeniería de Sistemas', limit_date: Date.new(2018,12,18)})
survey = Survey.create({name: 'Perfil en fase #1', event_id: event.id})
selectOptionQuestion = Questions::SelectOption.create({ title: 'Introducción', survey_id: survey.id, max_score: 40,
    options_attributes: [ { point: 40, description: 'Bueno' },
        { point: 28, description: 'Regular'},
        { point: 14, description: 'Malo'} ]})
textQuestion = Questions::Text.create({title: 'Antecedentes', description: 'Se debe redactar con el estándar APA', survey_id: survey.id})

event = Event.create({name: 'Segunda Revisión Perfil', year: '2018', semester: 'Segundo', career: 'Ingeniería de Sistemas', limit_date: Date.new(2018,12,27)})