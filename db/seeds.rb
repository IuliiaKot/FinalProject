# Cohort.delete_all
# Student.delete_all
# Pitch.delete_all
# Rank.delete_all
# Vote.delete_all
# Setting.delete_all
# Team.delete_all
# # # # Teacher.delete_all
# # #
# # # #
# # # Teacher.create(email: 'julia@gmail.com', password: '123456', first_name: "Iuliia", last_name: "Kotlenko")
# # #
# Cohort.create(name: 'nyc-bobolinks-2016')
# Setting.create(cohort_id: Cohort.last.id, pitches_per_student: 3, number_in_second_round: 4,active: true, number_of_teams: 3,student_vote_first_round: 5, active_first_round: false)
# students = [
#   {first_name: "Pan", last_name: "Wan", email: 'pan@gmail.com', password: '123456'},
#   {first_name: "Niel", last_name: "Geyman", email: 'niel@gmail.com', password: '123456'},
#   {first_name: "Elizaneth", last_name: "Layway", email: 'elizaneth@gmail.com', password: '123456'},
#   {first_name: "Gabriel", last_name: "Maham", email: 'gabriel@gmail.com', password: '123456'},
#   {first_name: "Amir", last_name: "Rafick", email: 'amir@gmail.com', password: '123456'},
#   {first_name: "Anthony", last_name: "Narisi", email: 'anthony@gmail.com', password: '123456'},
#   {first_name: "Emilia", last_name: "Friedberg", email: 'emilia@gmail.com', password: '123456'},
#   {first_name: "Myra", last_name: "Orgain", email: 'myra@gmail.com', password: '123456'}
#   # {first_name: "Neill", last_name: "Perry", email: 'neill@gmail.com', password: '123456'},
#   # {first_name: "Peter", last_name: "Duke", email: 'peter@gmail.com', password: '123456'},
#   # {first_name: "Walter", last_name: "Chabla", email: 'walter@gmail.com', password: '123456'}
#   ]
#
#   students.each do |student|
#     Cohort.last.students.create(student)
#   end
#
  # student_pitches = Cohort.last.students
  # student_pitches.each do |student|
  #   Cohort.last.setting.pitches_per_student.times do
  #     student.pitches.create!(title: Faker::Hipster.word.capitalize, description: Faker::Hipster.paragraph(5))
  #   end
  # end
#


  #
  Student.all.each do |student|
    ids = (1..11).to_a.shuffle
    Vote.create(pitch_id: Pitch.all[ids.shift].id, count: 1, student_id: student.id)
    Vote.create(pitch_id: Pitch.all[ids.shift].id, count: 1, student_id: student.id)
    Vote.create(pitch_id: Pitch.all[ids.shift].id, count: 1, student_id: student.id)
    Vote.create(pitch_id: Pitch.all[ids.shift].id, count: 1, student_id: student.id)
    Vote.create(pitch_id: Pitch.all[ids.shift].id, count: 1, student_id: student.id)
  end


#


# ranking
#
final_ideas = Cohort.last.pitches.in_second_round
Student.all.each do |student|
  rank = (1..final_ideas.length).to_a.shuffle
  final_ideas.each do |pitch|
    pitch.ranks.create(rank: rank.shift, student_id: student.id)
  end
end






#
# Cohort.create(name: 'nyc-sealions-2017')
# Setting.create(cohort_id: Cohort.last.id, pitches_per_student: 2, number_in_second_round: 4,active: true, number_of_teams: 3,student_vote_first_round: 5, active_first_round: false)
# students = [
#   {first_name: "Samanta", last_name: "Mandf", email: 'samanta@gmail.com', password: '123456'},
#   {first_name: "Jesica", last_name: "Geyman", email: 'jesica@gmail.com', password: '123456'},
#   {first_name: "Sam", last_name: "Norman", email: 'sam@gmail.com', password: '123456'},
#   {first_name: "Gabriel", last_name: "Maham", email: 'gabriel1@gmail.com', password: '123456'},
#   {first_name: "Dan", last_name: "Balckman", email: 'dan@gmail.com', password: '123456'},
#   {first_name: "Zack", last_name: "Homtel", email: 'zack@gmail.com', password: '123456'},
#   {first_name: "Ann", last_name: "Bonwat", email: 'anna_b@gmail.com', password: '123456'},
#   {first_name: "Miranda", last_name: "Orgain", email: 'miranda@gmail.com', password: '123456'}
#   ]
#
#   students.each do |student|
#     Cohort.last.students.create(student)
#   end
#
#   student_pitches = Cohort.last.students
#   student_pitches.each do |student|
#     Cohort.last.setting.pitches_per_student.times do
#       student.pitches.create!(title: Faker::Hipster.word.capitalize, description: Faker::Hipster.paragraph(5))
#     end
#   end



    #
    # Cohort.last.students.each do |student|
    #   # debugger
    #   ids = (1..Cohort.last.pitches.count).to_a.shuffle
    #   Vote.create(pitch_id: Cohort.last.pitches[ids.shift-1].id, count: 1, student_id: student.id)
    #   Vote.create(pitch_id: Cohort.last.pitches[ids.shift-1].id, count: 1, student_id: student.id)
    #   Vote.create(pitch_id: Cohort.last.pitches[ids.shift-1].id, count: 1, student_id: student.id)
    #   Vote.create(pitch_id: Cohort.last.pitches[ids.shift-1].id, count: 1, student_id: student.id)
    #   Vote.create(pitch_id: Cohort.last.pitches[ids.shift-1].id, count: 1, student_id: student.id)
    # end


#


# ranking
#
# final_ideas = Cohort.last.pitches.in_second_round
# Cohort.last.students.each do |student|
#   rank = (1..final_ideas.length).to_a.shuffle
#   final_ideas.each do |pitch|
#     pitch.ranks.create(rank: rank.shift, student_id: student.id)
#   end
# end
