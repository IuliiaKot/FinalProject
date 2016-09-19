# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Cohort.delete_all

Cohort.create!(name: 'NYC-Golden-Bears-2016')
Cohort.create!(name: 'NYC-Red-Pandas-2016')

students= ['Amir Tawfik', 'Anthony Narisi','David Lin','Elizabeth Lefever','Emilia Friedberg','Gabriel Mahan', 'Marcoa Martinez', 'Myra Orgain', 'Neill Perry', 'Peter Duke','Wolfgang Criollo','Walter Chabla','Yossi Ruben','Nicholas Wang']

students.each do |student|
  Cohort.last.students.create(first_name: student.split(' ').first, last_name: student.split(' ').last)
end
