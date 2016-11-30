# #
# #
# Cohort.delete_all
# Student.delete_all
# Pitch.delete_all
# Rank.delete_all
# Vote.delete_all
# Teacher.delete_all
# Setting.delete_all
#
#
# Teacher.create(email: 'julia@gmail.com', password: '987654321', first_name: "Iuliia", last_name: "Kotlenko")
# Cohort.create(name: 'nyc-bobolinks-2016')
# Setting.create(cohort_id: Cohort.last.id, pitches_per_student: 4, number_in_second_round: 4,active: true, number_of_teams: 3,student_vote_first_round: 6, active_first_round: false)
# students = [
#   {first_name: "Anna", last_name: "Kvalchuck", email: 'anna@gmail.com', password: '123456'},
#   {first_name: "Pan", last_name: "Wan", email: 'pan@gmail.com', password: '123456'},
#   {first_name: "Niel", last_name: "Geyman", email: 'niel@gmail.com', password: '123456'},
#   {first_name: "Elizaneth", last_name: "Layway", email: 'elizaneth@gmail.com', password: '123456'},
#   {first_name: "Gabriel", last_name: "Maham", email: 'anna@gmail.com', password: '123456'},
#   {first_name: "Amir", last_name: "Rafick", email: 'amir@gmail.com', password: '123456'},
#   {first_name: "Anthony", last_name: "Narisi", email: 'anthony@gmail.com', password: '123456'},
#   {first_name: "Emilia", last_name: "Friedberg", email: 'emilia@gmail.com', password: '123456'},
#   {first_name: "Myra", last_name: "Orgain", email: 'myra@gmail.com', password: '123456'},
#   {first_name: "Neill", last_name: "Perry", email: 'neill@gmail.com', password: '123456'},
#   {first_name: "Peter", last_name: "Duke", email: 'peter@gmail.com', password: '123456'},
#   {first_name: "Walter", last_name: "Chabla", email: 'walter@gmail.com', password: '123456'}
#   ]
#
#   students.each do |student|
#     Cohort.last.students.create(student)
#   end
#
#   student_pitches = Cohort.last.students
#   student_pitches[0].pitches.create(title: 'InstagramReplica', description: 'Retro synth sartorial, typewriter distillery pour-over man braid cronut wolf messenger bag etsy put a bird on it occupy williamsburg. Pitchfork art party sartorial tacos, williamsburg YOLO 90s. Mumblecore retro hell of freegan kitsch. Letterpress tofu twee, narwhal ramps post-ironic tumblr man braid kale chips direct trade la croix butcher. Green juice mixtape fingerstache, meggings trust fund keffiyeh stumptown meditation. Twee hella kitsch fixie venmo tilde. Hot chicken aesthetic YOLO freegan, sriracha flannel biodiesel.')
#   student_pitches[0].pitches.create(title: 'Farm-to-table' , description: "Cold-pressed twee single-origin coffee schlitz green juice. Taxidermy put a bird on it meh master cleanse chambray. Keffiyeh blue bottle kombucha coloring book literally. ")
#   student_pitches[1].pitches.create(title: 'Avalon', description: 'Retro synth sartorial, typewriter distillery pour-over man braid cronut wolf messenger bag etsy put a bird on it occupy williamsburg. Pitchfork art party sartorial tacos, williamsburg YOLO 90s.  ')
#   student_pitches[2].pitches.create(title: 'YOLO' , description: "Farm-to-table knausgaard quinoa vexillologist poke. Hoodie lumbersexual tattooed, squid blue bottle you probably haven't heard of them venmo salvia man braid meh roof party bitters. Synth salvia you probably haven't heard of them messenger bag, lomo distillery hammock 90's. Swag vexillologist mustache, try-hard heirloom everyday carry waistcoat occupy. Man bun celiac whatever mlkshk ramps tumblr. Vice locavore lomo irony leggings, intelligentsia tote bag. Brooklyn bespoke kitsch pour-over, poutine banh mi raw denim taxidermy.")
#   student_pitches[3].pitches.create(title: 'Find me', description: "Drinking vinegar hoodie 90's, kinfolk man braid chartreuse vaporware affogato try-hard. Umami seitan normcore, farm-to-table meh organic pabst pug knausgaard ramps chillwave man bun church-key four dollar toast affogato.")
#   student_pitches[4].pitches.create(title: 'Run2Gether' , description: " Synth salvia you probably haven't heard of them messenger bag, lomo distillery hammock 90's. Swag vexillologist mustache, try-hard heirloom everyday carry waistcoat occupy. Man bun celiac whatever mlkshk ramps tumblr. Vice locavore lomo irony leggings, intelligentsia tote bag. Brooklyn bespoke kitsch pour-over, poutine banh mi raw denim taxidermy.")
#   student_pitches[5].pitches.create(title: 'Yelp', description: ' Unicorn meggings XOXO letterpress, yr wayfarers irony synth hammock mixtape literally dreamcatcher copper mug disrupt. Jean shorts air plant marfa knausgaard, kombucha pinterest tbh selvage fingerstache viral hammock mumblecore YOLO dreamcatcher activated charcoal.')
#   student_pitches[6].pitches.create(title: 'Spotufy' , description: "XOXO flexitarian lumbersexual squid. Lumbersexual cronut try-hard, keffiyeh af hot chicken listicle occupy tacos man braid gastropub. Skateboard hammock tacos cray listicle. Skateboard cornhole sartorial pinterest chartreuse, lomo kale chips. Jianbing normcore iPhone hot chicken. Gluten-free brunch vaporware tofu, semiotics master cleanse tilde franzen man braid organic wayfarers pour-over waistcoat. Cardigan pok pok street art waistcoat, pop-up activated charcoal knausgaard ramps crucifix.")
#   student_pitches[6].pitches.create(title: 'Mafia', description: 'Small batch succulents viral meh. Waistcoat tacos mustache, affogato kogi vexillologist viral enamel pin microdosing put a bird on it tote bag fixie. Selfies direct trade ugh echo park williamsburg hoodie.')
#   student_pitches[6].pitches.create(title: 'Read Together' , description: "Bushwick schlitz keytar, plaid waistcoat tofu vexillologist quinoa activated charcoal actually cornhole butcher occupy polaroid affogato. Cardigan YOLO deep v master cleanse direct trade, four loko chambray.")
#   student_pitches[7].pitches.create(title: 'XOXO', description: "XOXO trust fund vinyl, meggings master cleanse craft beer freegan paleo. Af fanny pack letterpress 8-bit. Gentrify bitters pabst slow-carb, sartorial fixie twee live-edge swag next level kale chips sriracha you probably haven't heard of them cronut. Pop-up master cleanse deep v seitan, viral next level franzen artisan pabst fixie 90's. Cronut PBR&B disrupt, occupy glossier pok pok la croix blue bottle live-edge bicycle rights vice migas tattooed forage. Schlitz four loko skateboard whatever, jean shorts narwhal pour-over chartreuse. Kickstarter glossier health goth, bushwick mixtape try-hard sustainable biodiesel vaporware shabby chic church-key tumeric knausgaard yuccie swag.")
#   student_pitches[8].pitches.create(title: 'Prisma', description: "Shoreditch jean shorts snackwave celiac distillery, poke lo-fi mumblecore tote bag lumbersexual tilde blue bottle pickled cliche. Hammock chambray vinyl affogato. Unicorn dreamcatcher tattooed everyday carry tilde. Pickled ugh narwhal, bitters aesthetic migas banjo flexitarian next level celiac man bun kinfolk.")
#   student_pitches[9].pitches.create(title: "Banho", description: "Iceland church-key selfies poke williamsburg health goth four loko, dreamcatcher af. Banjo polaroid neutra poutine, austin cliche copper mug cronut four dollar toast. Disrupt yr vice messenger bag etsy put a bird on it. Plaid taxidermy gluten-free, retro hell of pop-up affogato helvetica enamel pin echo park cornhole. Knausgaard before they sold out freegan whatever chillwave. ")
#   student_pitches[10].pitches.create(title: "Next Level", description: "Cred next level tumblr beard umami. Humblebrag slow-carb la croix, next level chillwave lyft brunch glossier semiotics stumptown put a bird on it locavore farm-to-table. Tofu pok pok hashtag asymmetrical, brooklyn microdosing pour-over selfies. Meditation single-origin coffee biodiesel hammock viral. Aesthetic fashion axe raw denim sustainable portland swag plaid. Crucifix coloring book bitters intelligentsia, listicle pickled asymmetrical pug. Slow-carb cray godard, everyday carry lyft banh mi chartreuse jianbing next level.")
#   student_pitches[11].pitches.create(title: 'Williamsburg', description: "Williamsburg mlkshk chicharrones, keytar af gentrify trust fund literally organic celiac tousled unicorn. Master cleanse raw denim VHS jean shorts. Fixie raw denim street art cray yr. Meggings brunch listicle tofu banh mi, selvage you probably haven't heard of them farm-to-table. Chartreuse asymmetrical helvetica chicharrones flexitarian ennui, narwhal VHS lyft jianbing craft beer biodiesel. ")
#
#
#   Student.all.each do |student|
#     ids = (1..11).to_a.shuffle
#     Vote.create(pitch_id: Pitch.all[ids.shift].id, count: 1, student_id: student.id)
#     Vote.create(pitch_id: Pitch.all[ids.shift].id, count: 1, student_id: student.id)
#     Vote.create(pitch_id: Pitch.all[ids.shift].id, count: 1, student_id: student.id)
#     Vote.create(pitch_id: Pitch.all[ids.shift].id, count: 1, student_id: student.id)
#     Vote.create(pitch_id: Pitch.all[ids.shift].id, count: 1, student_id: student.id)
#   end

#

#
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
