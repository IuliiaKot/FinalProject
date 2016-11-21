# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Cohort.delete_all
# Student.delete_all
# Pitch.delete_all
# Rank.delete_all
# Vote.delete_all
# Teacher.delete_all
# Setting.delete_all


# Cohort.create!(name: 'NYC-Golden-Bears-2016')
# Cohort.create!(name: 'NYC-Red-Pandas-2016')
#
# students= ['Amir Tawfik', 'Anthony Narisi','David Lin','Elizabeth Lefever','Emilia Friedberg','Gabriel Mahan', 'Marcoa Martinez', 'Myra Orgain', 'Neill Perry', 'Peter Duke','Wolfgang Criollo','Walter Chabla','Yossi Ruben','Nicholas Wang']
#
# students.each do |student|
#   email = student.split(' ').first.downcase.concat('@gmail.com')
#   Cohort.last.students.create!(email: email, password: "123456", first_name: student.split(' ').first, last_name: student.split(' ').last)
# end
# Cohort.last.students.last.pitches.create(title: 'Avalon', description:'Synth literally tumblr portland brunch, paleo next level chillwave normcore. Organic man bun yuccie, quinoa activated charcoal skateboard humblebrag meggings post-ironic pork belly. Thundercats iPhone man braid, edison bulb venmo health goth kogi poutine lo-fi flexitarian roof party +1 kombucha post-ironic blog.')
# Cohort.last.students.last.pitches.create(title: 'Back to Future', description:'Synth literally tumblr portland brunch, paleo next level chillwave normcore. Organic man bun yuccie, quinoa activated charcoal skateboard humblebrag meggings post-ironic pork belly. Thundercats iPhone man braid, edison bulb venmo health goth kogi poutine lo-fi flexitarian roof party +1 kombucha post-ironic blog.')
# Cohort.last.students.last.pitches.create(title: 'What next?', description:'Synth literally tumblr portland brunch, paleo next level chillwave normcore. Organic man bun yuccie, quinoa activated charcoal skateboard humblebrag meggings post-ironic pork belly. Thundercats iPhone man braid, edison bulb venmo health goth kogi poutine lo-fi flexitarian roof party +1 kombucha post-ironic blog.')
# Cohort.last.students[2].pitches.create(title: 'Replica', description:'Synth literally tumblr portland brunch, paleo next level chillwave normcore. Organic man bun yuccie, quinoa activated charcoal skateboard humblebrag meggings post-ironic pork belly. Thundercats iPhone man braid, edison bulb venmo health goth kogi poutine lo-fi flexitarian roof party +1 kombucha post-ironic blog.')
# Cohort.last.students[2].pitches.create(title: 'Yelp for alergi', description:'Synth literally tumblr portland brunch, paleo next level chillwave normcore. Organic man bun yuccie, quinoa activated charcoal skateboard humblebrag meggings post-ironic pork belly. Thundercats iPhone man braid, edison bulb venmo health goth kogi poutine lo-fi flexitarian roof party +1 kombucha post-ironic blog.')
# Cohort.last.students[2].pitches.create(title: 'Find my Car', description:'Synth literally tumblr portland brunch, paleo next level chillwave normcore. Organic man bun yuccie, quinoa activated charcoal skateboard humblebrag meggings post-ironic pork belly. Thundercats iPhone man braid, edison bulb venmo health goth kogi poutine lo-fi flexitarian roof party +1 kombucha post-ironic blog.')
#
# Cohort.last.students[4].pitches.create(title: 'Vacation', description:'Synth literally tumblr portland brunch, paleo next level chillwave normcore. Organic man bun yuccie, quinoa activated charcoal skateboard humblebrag meggings post-ironic pork belly. Thundercats iPhone man braid, edison bulb venmo health goth kogi poutine lo-fi flexitarian roof party +1 kombucha post-ironic blog.')
# Cohort.last.students[7].pitches.create(title: 'Instagram', description:'Synth literally tumblr portland brunch, paleo next level chillwave normcore. Organic man bun yuccie, quinoa activated charcoal skateboard humblebrag meggings post-ironic pork belly. Thundercats iPhone man braid, edison bulb venmo health goth kogi poutine lo-fi flexitarian roof party +1 kombucha post-ironic blog.')
# Cohort.last.students[3].pitches.create(title: 'Tinder', description:'Synth literally tumblr portland brunch, paleo next level chillwave normcore. Organic man bun yuccie, quinoa activated charcoal skateboard humblebrag meggings post-ironic pork belly. Thundercats iPhone man braid, edison bulb venmo health goth kogi poutine lo-fi flexitarian roof party +1 kombucha post-ironic blog.')
# Cohort.last.students[4].pitches.create(title: 'Read together', description:'Synth literally tumblr portland brunch, paleo next level chillwave normcore. Organic man bun yuccie, quinoa activated charcoal skateboard humblebrag meggings post-ironic pork belly. Thundercats iPhone man braid, edison bulb venmo health goth kogi poutine lo-fi flexitarian roof party +1 kombucha post-ironic blog.')
#
# Cohort.last.students[8].pitches.create(title: 'Replica', description:'Synth literally tumblr portland brunch, paleo next level chillwave normcore. Organic man bun yuccie, quinoa activated charcoal skateboard humblebrag meggings post-ironic pork belly. Thundercats iPhone man braid, edison bulb venmo health goth kogi poutine lo-fi flexitarian roof party +1 kombucha post-ironic blog.')
# Cohort.last.students[8].pitches.create(title: 'We work', description:'Synth literally tumblr portland brunch, paleo next level chillwave normcore. Organic man bun yuccie, quinoa activated charcoal skateboard humblebrag meggings post-ironic pork belly. Thundercats iPhone man braid, edison bulb venmo health goth kogi poutine lo-fi flexitarian roof party +1 kombucha post-ironic blog.')
# Cohort.last.students[8].pitches.create(title: 'We live', description:'Synth literally tumblr portland brunch, paleo next level chillwave normcore. Organic man bun yuccie, quinoa activated charcoal skateboard humblebrag meggings post-ironic pork belly. Thundercats iPhone man braid, edison bulb venmo health goth kogi poutine lo-fi flexitarian roof party +1 kombucha post-ironic blog.')

Teacher.create(email: 'julia@gmail.com', password: '987654321', first_name: "Iuliia", last_name: "Kotlenko")

# Setting.create(cohort_id: Cohort.last.id, student_vote_first_round: 4, pitches_per_student: 3,number_in_second_round: 3,active: true )
# # Cohort.last.students.create(first_name: "A", last_name: "B", email: "test@gmail.com", password: "123456")
#
# Cohort.last.build_setting(pitches_per_student: 4, number_in_second_round: 6, student_vote_first_round: 7, number_of_teams: 4).save
