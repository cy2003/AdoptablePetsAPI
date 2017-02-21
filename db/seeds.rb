# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cathy = User.new(name: "Cathy", email: "cathy@me.com", password: "1234", is_rescue: true)
sam = User.new(name: "Sam", email: "sam@me.com", password: "1234", is_rescue: true)
nick = User.new(name: "Nick", email: "nick@me.com", password: "1234", is_rescue: false)
nick1 = Adopter.new
nick.adopter = nick1
nick.save
tina = User.new(name: "Tina", email: "tina@me.com", password: "1234", is_rescue: false)
tina1 = Adopter.new
tina.adopter = tina1
tina.save

mighty = Rescue.create(organization_name: "Mighty Mutts", street_address: "860 Broadway", city: "New York", state: "NY", zipcode: 10003, website: "wwww.mightymutts.org", phone: 5551212)

bideawee = Rescue.create(organization_name: "Bideawee", street_address: "410 East 38th Street", city: "New York", state: "NY", zipcode: 10016, website: "www.bideawee.org", phone: 5683738)

cathy.rescue = mighty
cathy.save

sam.rescue = bideawee
sam.save


hunney = Pet.create(pet_type: "dog", name: "Hunney", sex: "female", breed: "Staffy Mixed", age: 2, bio: "Hunney’s life was pretty mixed up until a Mighty Mutts volunteer saved her from a New York City shelter. She was abandoned and shuffled so much that she became trapped in her own fear. Hunney has been spending time in Vermont working on her confidence and learning to trust. She is now ready for her forever home. Hunney loves it outside of the city so much that we would like to keep her home in a rural environment.

Spayed | Up-to-date with routine shots | House-trained | Good with: dogs, prefers a home without: cats, kids", rescue: mighty, image: "hunny.png")


rue = Pet.create(pet_type: "dog", name: "Rue", sex: "female", breed: "Shih Tzu Mix", age: 3, bio:"Meet Rue! Recently rescued from a terrible life in a puppy mill, Rue is a timid but affectionate little gal looking for a quiet home where she can rest and recharge from her ordeal. Her freckled coat and adorable underbite are sooo endearing, and we are looking forward to finding her a great home to appreciate her personality, not just her puppy-producing capabilities. Based on vet estimates, we believe she is around 5 years old. Rue is still learning about walking on a leash, housebreaking, and everything else involved in being a dog. Because of her timid personality, we are recommending she go to an adult-only home.

Spayed | Up-to-date with routine shots | Good with: dogs, cats | Best in a home without: kids", rescue: mighty, image: "rue.png")

pookie = Pet.create(pet_type: "dog", name: "Pookie", sex: "female", breed: "Shepard/Cattle Mix", age: 1, bio: "Pookie is a beautiful Lab/Shepherd puppy who was rescued along with her mom, Penny, and two litter mates from a backyard breeder in New Jersey. At 24 weeks of age, Pookie is only just learning about the world. She does great with other dogs—including her two foster brothers—but has not yet met a cat. Pookie’s favorite activities include eating with her human, sleeping on her human, and tugging on toys with her human (and her foster brothers). Her ideal forever family includes someone who can both play and cuddle. Pookie is sweet, friendly, and gentle, but she is still a puppy. She is learning basic obedience commands and has already learned how to walk on a leash. She is also being housebroken as you are reading this. She is a joy to behold and just needs a little more help and patience (she is a puppy after all) to be the best lifelong companion she can be!

Spayed | Up-to-date on routine vaccinations | Not Housebroken |Good with: dogs", rescue: mighty, image: "pookie.png" )

clementine = Pet.create(pet_type: "cat", name: "Clementine", sex: "female", breed: "Domestic Shorthair", age: 1, bio: "Meet Clementine, a beautiful female tabby. She's super friendly & loves to be pet. She also likes to lay her cheek on your hand and purr. Clementine is still a kitten at around 10 months old. She is litterbox trained and fully vetted.

Spayed/Neutered | Up-to-date with routine shots | House-trained", rescue: mighty, image: "clementine.jpg")

ebon = Pet.create(pet_type: "cat", name: "Ebon", sex: "female", breed: "Domestic Shorthair", age: 1, bio: "Meet Ebon, a beautiful short hair tuxedo kitten. She's our little cross eyed which makes her look very distinct and cute. She is very curious and friendly towards people. In case you were wondering where to find her she's usually hanging out on a cat tree or sharing a bed with Bobby Darin. She loves playing but usually is very calm, which makes her a perfect lap companion. Come over and meet her, you won't regret it!

Spayed/Neutered | Up-to-date with routine shots | House-trained", rescue: mighty, image: "ebon.jpg")

giovanni = Pet.create(pet_type: "cat", name: "Giovanni", sex: "male", breed: "Domestic Shorthair", age: 2, bio: "Come see Giovanni! This grey American shorthair with round face and big curious eyes will make you fall in love with him straight away. He is the sweetest cat, who loves playing with toy mice and… a lot of attention. He’s got this amazing confused look on his face at all times, which makes him look like he’s got a lot on his mind. He’ll be shy at first, but don’t let it fool you! He really wants you to stick around.

Spayed/Neutered | Up-to-date with routine shots | House-trained", rescue: mighty, image: "giovanni.jpg")

pepper = Pet.create(pet_type: "dog", name: "Pepper", sex: "male", breed: "Shepard/Cattle Mix", age: 1, bio: "Pepper is a beautiful six month old puppy who was recently rescued from a backyard breeder in New Jersey, along with her mom, Penny, and littermates, Pickles and Pookie. She is just starting to learn about the world and how city life works, and she is training very hard on her basic obedience commands. Because she is a puppy, Pepper will require a patient hand and someone who is willing to continue to enhance her basic obedience training and leash walking skills. Her perfect forever family is one that will give her all the exercise and playtime she needs, but that are also willing to cuddle at the end of the day.

Spayed | Up-to-date with routine shots | Good with: dogs | Not housebroken", rescue: mighty, image: "pepper.jpg")

pickles = Pet.create(pet_type: "dog", name: "Pickles", sex: "female", breed: "Shepard/Cattle Mix" , age: 1 , bio: "Six month old Pickles was recently rescued from a backyard breeder in New Jersey, along with her mom, Penny, and her littermates, Pookie and Pepper. Pickles is acclimating well to city life and has already begun to master walking nicely on leash. She is working with our volunteers on basic obedience training, and knows how to look and sit. Because she is a puppy, she will need a forever family that can help her learn about housebreaking and enhance her beginning obedience training. Pickle’s perfect forever home is one where she can cuddle all day every day, but she is also looking for someone who will throw her favorite squeaky toys so she can play fetch.

Spayed | Up-to-date with routine shots | Good with: dogs | Not housebroken",  rescue: mighty, image: "pickles.jpg")

chewbacca = Pet.create(pet_type: "dog", name: "Chewbacca", sex: "female" , breed: "Pitbull Mix", age: 1 , bio: "Chewbacca, or Chewie for short, is a three month old pitbull mix recently rescued off the street of NYC. Chewie is adorable girl who loves to sit in her human friends’ laps. Chewie is working very hard to learn everything she needs to know to be a great dog. Her ideal forever family is one that can balance giving her exercise to burn off all of her puppy energy with cuddle time and basic training. Chewie will need some help with housebreaking as she has never had anyone to teach her before. For a puppy, she walks very well on leash, but she will look to you for guidance in negotiating the sights and sounds of the city.
Chewie’s life didn’t start out so great, but she is filled with optimism the more new things she is introduced to. She promises to continue working on her puppy training if you promise to consider letting her into your heart!

Not yet Spayed | Up-to-date with routine shots | Good with: unknown | Not housebroken",  rescue: mighty, image: "chewbacca.jpg" )

dolly = Pet.create(pet_type: "cat", name: "Dolly", sex: "female", breed: "Tuxedo", age: 1, bio: "Meet Dolly, a beautiful gray and white tuxedo cat with big round eyes and a cute, pink little nose. Dolly is a young, medium sized female, who is a little on the chubby side (more to love!). She is a true character that loves all sorts of toys. She also enjoys relaxing in the front window and posing like a seal. Dolly allows adorers to bestow their affection upon her once she deems them worthy. :) She is litterbox trained and fully vetted–just waiting for the perfect forever home to come along.

Spayed/Neutered | Up-to-date with routine shots | House-trained",  rescue: mighty, image: "dolly.jpg" )

bambi = Pet.create(pet_type: "cat", name: "Bambi", sex: "female", breed: "Domestic Shorthair", age: 1, bio: "Bambi is an extremely cute kitten. She's white with little splats of grey here and there and green eyes. She's definitely still a kitten and seem very vulnerable and delicate. She loves affection and is very playful but a little bit wary at first. Once she gets used to you she'll meow after you when you walk away! You've got to see this one!

Spayed/Neutered | Up-to-date with routine shots | House-trained",  rescue: mighty, image: "bambi.jpg")

samory = Pet.create(pet_type: "cat", name: "Samory", sex: "male", breed: "Domestic Shorthair", age: 2, bio: "Samory is a handsome 2+ years old tuxedo cat with an adorable white & pink nose and short hair. He LOVES beef flavor fancy feast! Samory is a very funny cat, who likes rubbing every visitor's legs and complains in the mean time. ;) He is litter box trained and fully vetted. Samory has been moved to a foster situation. A meeting can be arranged for those interested in adopting.

Spayed/Neutered | Up-to-date with routine shots | House-trained",  rescue: mighty, image: "samory.png" )


mighty.pets = [hunney, rue, pookie, clementine, ebon, giovanni, pepper, pickles, chewbacca, dolly, bambi, samory]
mighty.save
# hunney.rescue = mighty
hunney.save
# rue.rescue = mighty
rue.save
# pookie.rescue = mighty
pookie.save
# clementine.rescue = mighty
clementine.save
# ebon.rescue = mighty
ebon.save
# giovanni.rescue = mighty
giovanni.save
# pepper.rescue = mighty
pepper.save
# pickles.rescue = mighty
pickles.save
# chewbacca.rescue = mighty
chewbacca.save
# dolly.rescue = mighty
dolly.save
# bambi.rescue = mighty
bambi.save
# samory.rescue = mighty
samory.save


serena = Pet.create(pet_type: "cat", name: "Serena", sex: "female", breed: "Domestic Shorthair", age: 1, bio: "Meet Serena! Serena is a stunning one year old calico cat who came to Bideawee after being found abandoned. She has a unique and eye-catching black, orange, and white coat with pale green eyes. Serena is a very sweet cat who is also calm and quiet. She prefers to spend her time being pet by the staff or volunteers and taking cozy midday naps. Serena is looking for a home that matches her personality. Somewhere peaceful and quiet where she can learn to come out of her shell a little. Once Serena knows you her trepidation does wear off and she'll do great in a home. If you're looking for a beautiful and loving cat, come meet Serena!", rescue: bideawee, image: "serena.jpg")
serena.save

lily = Pet.create(pet_type: "cat", name: "Lilly", sex: "female", breed: "Domestic Shorthair", age: 1, bio: "Say hello to Lilly! Lilly is a stunning six month old female white and black cat. She came to Bideawee in early February with the rest of her family and she is excited to find her forever home! Lilly is one of the sweetest cats in the group. She's quiet and loving, oftentimes coming up to rub against you while you change their water or clean their litter box. She loves to be pet and will plop down next to you for a nap if you scratch her behind the ears. Lilly is a little shy at first but she breaks out of it quickly. She gets along well with other cats and would be happy to share her home with one. If Lilly sounds like your cup of tea, come to Bideawee!", rescue: bideawee, image: "lilly.jpg")
lily.save

adam = Pet.create(pet_type: "dog", name: "Adam", sex: "male", breed: "Corgi Mix", age: 2, bio: "This fantastically handsome man is named Adam.
You can see from his big, happy smile, and excited face that he is just thrilled to be meeting you!
A radiant spirit, full of eager effervescence and pizzazz, it's almost impossible not to feel happy-go-lucky around Adam! Not to mention, he's gorgeous from tip to tail! Boasting a brilliant copper and ivory coat, and a bright pink tongue, he's just too good-looking for words. Weighing in at 30 pounds, he's the perfect medium size, to boot!
Adam needs a feline free family and would do best in an adult only home. Thanks to a generous Bideawee volunteer who has paid Adam's adoption fee, you can take this sweet boy home for free. If Adam sounds like the man you've been looking for, then please ask about adopting Adam today!", rescue: bideawee, image: "adam.jpg")
adam.save

perla = Pet.create(pet_type: "dog", name: "Perla", sex: "female", breed: "Spaniel Mix", age: 2, bio: "With her soulful eyes and shy smile, Perla is sure to capture someone's heart very soon. She is a two year old Spaniel mix who weighs seventeen pounds. Perla is new to New York, having only recently moved here from Puerto Rico. As a result, Perla can be a little nervous outside and timid upon the first time meeting a new person. Underneath her bashfulness, though, is an incredibly sweet dog who is patiently waiting for an owner she can cozy up next to. Perla is looking for an experienced owner, who is home often, and who can work with her on socializing and overcome her fears. Perla's dream home is calm and quiet without the hustle and bustle that so often accompanies city life. She also would prefer to live without small children as their fast movements and loud (albeit cute) voices can make her nervous. If you think you have a home like this, then come to Bideawee and meet Perla!", rescue: bideawee, image: "perla.jpg")
perla.save

ripley = Pet.create(pet_type: "dog", name: "Ripley", sex: "male", breed: "Rotteweiler Mix", age: 1, bio: "This fantastically handsome young man is named Ripley. Isn't he just a ham? Donning a fantastic face, a gorgeous ebony and copper coat, and a bright, be-speckled tongue, he's just too dapper for words. Jubilant and enthusiastic from tip to tail, he's always excited for the next adventure, the next new friend to make, and the newest trick to learn. He's got both gumption and initiative for life, and all he needs is someone in life who shares in his gung-ho attitude and strong desire to live to the fullest!
Whether it's a hike in the woods, a jog on the beach, an evening walking in town with new friends, or an afternoon spent learning fun things, Ripley is sure to be all in! If this wonderful man sounds like the one that you've been looking for, then please ask about adopting Ripley today!", rescue: bideawee, image: "ripley.jpg")
ripley.save

mork = Pet.create(pet_type: "dog", name: "Mork", sex: "male", breed: "Pincher Mix", age: 2, bio: "This phenomenal young man is named Mork. I think it goes without say that he is stunningly gorgeous. Donning a shining ebony coat, with brilliant rust-colored pips and highlights, Mork is visual perfection! Boasting a happy grin, charming ears, and a lust for life, he certainly must know how alluring he is! If not, his ever-growing fan club here at Bideawee certainly reminds him every day. As it's hard not to fall head over feet for him and his charms, he has quite a circle of admirers between the staff and volunteers.Weighing in at only 12 pounds, he is a fairly petite man, but he fancies himself a king, and who are we to disillusion his faith! Thanks to a generous Bideawee volunteer who has paid Mork's adoption fee, you can take this sweet boy home for free. If Mork sounds like the one for you, please ask about adopting him today!", rescue: bideawee, image: "mork.jpg")
mork.save

bideawee.pets = [serena, lily, adam, perla, ripley, mork]
bideawee.save
