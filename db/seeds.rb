User.destroy_all
Vehicle.destroy_all
Booking.destroy_all

draco = User.new(first_name: "Draco", last_name: "Malfoy", email: "draco@gmail.com", password: "123456",bio: "Unapologetically silver-tongued scion navigating a world of wizardry with aristocratic flair.")
draco.image = "Users/Draco.png"
draco.save

nimbus = Vehicle.new(name: "Nimbus",
                     price_per_day: 50,
                     location: "Knightsbridge, London",
                     description: "Greetings, mere Muggles. Draco Malfoy
                    here, offering you the rare opportunity to ride my Nimbus 2001, a broom of unrivaled elegance and
                    power. Imagine yourself soaring above the common folk, basking in the envy of all. But remember,
                    this broom is a privilege, not a right. Any mishandling, and you'll face the consequences of
                    crossing a Malfoy. Book now")
nimbus.user_id = draco.id
nimbus.image = "vehicles/Nimbus.png"
nimbus.save

hippogriff = Vehicle.new(name: "Hippogriff",
                         price_per_day: 150,
                         location: "Soho, London",
                         description: "Listen up, imbeciles. Draco
                        Malfoy here, reluctantly letting you rent my precious hippogriff. Touch it wrong, and you'll
                        face more than a mere sting. Return it late, and you'll wish you were facing a herd of
                        Blast-Ended Skrewts. Think you can handle it without messing up?")
hippogriff.user_id = draco.id
hippogriff.image = "vehicles/hippogriff.png"
hippogriff.save

portkey = Vehicle.new(name: "Portkey",
                      price_per_day: 75,
                      location: "Cornwall",
                      description: "Ugh, listen closely, peasants. Draco Malfoy here, offering my Portkey for those too
                      lazy to Apparate. Need instant travel? Well, it's your lucky day, but prepare your Gringotts
                      vaults — it's costly. This isn't some charity, it's a service for the elite. Want to skip lines
                      and flaunt your privilege? Just remember, you're paying for convenience, not a friendly smile.")
portkey.user_id = draco.id
portkey.image = "vehicles/portkey_boot.png"
portkey.save

sauron = User.new(first_name: "Andre", last_name: "Sauron", phone_number: "123123123", email: "andre@gmail.com", password: "123456", bio: "Dark Lord relentlessly seeking dominion, his fiery gaze pierces the realms of Middle-earth.")
sauron.image = "Users/Sauron.png"
sauron.save

nazgul = Vehicle.new(name: "Nazgûl",
                     price_per_day: 123,
                    location: "Copenhagen",
                    description: "Weaklings of Middle-earth, heed the Dark Lord Sauron's proposition. The Nazgûl,
                    instruments of my terror, are for rent. Mount these beasts, spread fear, and amplify my dominion.
                    But if returned late, prepare for eternal enslavement beside the wretched orcs. Defy me, and your
                    soul shall fuel my malevolence. Embrace darkness, for resistance spells torment. The choice is
                    simple, the consequences profound. The Nazgûl await, as do the fires of eternal servitude.")
nazgul.user_id = sauron.id
nazgul.image = "vehicles/nazgul.png"
nazgul.save

surfer = User.new(first_name: "Silver", last_name: "Surfer", email: "surfer@gmail.com", password: "123456", bio: "Silver cosmic herald riding the galactic waves in pursuit of balance and enlightenment.")
surfer.image = "Users/surfer.png"
surfer.save

surfboard = Vehicle.new(name: "Silver Surfer's surfboard",
                        price_per_day: 140,
                        location: "Staten Island, New York",
                        description: "Surf the stars, glide through galaxies, and embrace boundless adventure. From
                        Porto to Sydney in under 90 minutes, Crafted for unparalleled speed,our surfboard offers a
                        transcendent and speedy experience. Safe, awe-inspiring, and available for intrepid travelers.")
surfboard.user_id = surfer.id
surfboard.image = "vehicles/silver_surfboard.png"
surfboard.save

batman = User.new(first_name: "Bruce", last_name: "Wayne", email: "batman@gmail.com", password: "123456", bio: "Brooding vigilante of Porto's shadows, delivering justice with a relentless edge.")
batman.image = "Users/Bruce_Wayne.png"
batman.save

batmobile = Vehicle.new(name: "Batmobile",
                        price_per_day: 200,
                        location: "Lincoln Park, Chicago",
                        description: "Experience Porto's iconic thrill with the Batmobile. Navigate the cityscape in
                        unparalleled style and power. Our Batmobiles offer cutting-edge technology,sleek design, and
                        safety features for your journey. From nights out to secret missions, embrace the vigilante
                        spirit.")
batmobile.user_id = batman.id
batmobile.image = "vehicles/batmobile.png"
batmobile.save

bat = Vehicle.new(name: "The Bat",
                  price_per_day: 400,
                  location: "Near North Side, Chicago",
                  description: "Greetings, fellow adventurers. Bruce Wayne here, thrilled to offer you the chance to
                  experience The Bat, my extraordinary flying machine. Embrace the skies like never before, with
                  cutting-edge technology and sleek design. Safety and confidentiality are paramount. Explore your hero
                  within - whether for business or leisure.")
bat.user_id = batman.id
bat.image = "vehicles/the_bat.png"
bat.save

ironman = User.new(first_name: "Tony", last_name: "Stark", email: "ironman@gmail.com", password: "123456", bio: "Genius, billionaire, playboy, and philanthropist, engineering innovation and heroism with unparalleled charisma.")
ironman.image = "Users/ironman.png"
ironman.save

mark = Vehicle.new(name: "Mark 43",
                   price_per_day: 670,
                   location: "Greenwich Village, New York",
                   description: "Listen up, mere mortals! It's your lucky day because Tony Stark, genius, billionaire,
                   and the man behind the Iron Man suit, is offering you the chance of a lifetime. Need to up your game?
                   Rent the pinnacle of technology and sophistication—the Iron Man suit. Feel the power surge through
                   your veins as you become a living legend. You want style? Check. Unrivaled firepower? Check. A boost
                   to your ego? Double-check. Picture yourself soaring through the skies, commanding respect and envy
                   from every corner. Whether you're attending a gala, making an entrance, or
                   just flaunting your superiority, this suit has you covered. So, if you think you can handle the sheer
                   awesomeness that is me, Tony Stark, book now.")
mark.user_id = ironman.id
mark.image = "vehicles/mark43.png"
mark.save

goblin = User.new(first_name: "Green", last_name: "Goblin", email: "goblin@gmail.com", password: "123456", bio: "Maniacal mastermind on a fiendish spree, sowing chaos through pumpkin bombs and maniacal glee.")
goblin.image = "Users/green_goblin.png"
goblin.save

glider = Vehicle.new(name: "Green Glider",
                     price_per_day: 120,
                     location: "Queens, New York",
                     description: "Greetings, pathetic humans. The time has come for you to bask in the malevolent
                     magnificence of the Iron Green Glider, courtesy of yours truly, the Green Goblin. Ride the winds of
                     chaos with wicked delight, harnessing the power of my cutting-edge technology and sinister genius.
                     Whether you seek to spread fear or sow the seeds of anarchy, this glider is your ticket to infamy.
                     Dare to challenge the norms of society and embrace your inner darkness.")
glider.user_id = goblin.id
glider.image = "vehicles/green_glider.png"
glider.save

teller = User.new(first_name: "Jax", last_name: "Teller", email: "teller@gmail.com", password: "123456", bio: "Motorcycle-riding rebel with a wit as sharp as my bike's handlebars and a smile that could steal hearts faster than a roaring engine.")
teller.image = "Users/Jax_Teller.png"
teller.save

davidson = Vehicle.new(name: "Harley Davidson",
                       price_per_day: 25,
                       location: "Oakland, California",
                       description: "Hey there, road warriors! Ready to cruise like a true rebel? I'm Jax Teller, and
                       I've got my personal Harley Davidson up for rent. Feel the freedom of the open road on this
                       beast. But listen up, any scratches on her, and you'll wish you never sat in that saddle.
                       This bike's seen some things, just like me. So, treat her right or face the consequences. You've
                       been warned. If you're still up for the ride, book now!")
  davidson.user_id = teller.id
  davidson.image = "vehicles/harley_davidson.png"
davidson.save

carter = User.new(first_name: "Jimmy", last_name: "Carter", email: "carter@gmail.com", password: "123456", bio: "Smooth-talking detective with a knack for chaos and crime-solving, turning every situation into a wild adventure.")
carter.image = "Users/carter.png"
carter.save

stingray = Vehicle.new(name: "Chevrolet Corvette Stingray",
                       price_per_day: 45,
                       location: "Hollywood, California",
                       description: "Yo, it's your buddy Carter from Rush Hour, and guess what? My sweet Chevrolet
                       Corvette Stingray C3 is up for grabs! Picture yourself cruisin' like a boss, turning heads like
                       I turn bad guys into punchlines. This car's got more attitude than I do — and that's saying
                       something. Just remember, treat it right, or you'll have me chasing you like I'm after bad guys
                       in Hong Kong. And remember, don't you ever touch a black man's radio fool!")
  stingray.user_id = carter.id
  stingray.image = "vehicles/carter_car.png"
stingray.save

samwise = User.new(first_name: "Samwise", last_name: "Gamgee", email: "samwise@gmail.com", password: "123456", bio: "I'm Samwise Gamgee, a loyal gardener turned steadfast friend who stood by Frodo's side through the darkest of journeys to save Middle-earth.")
samwise.image = "Users/Sam.png"
samwise.save

pony = Vehicle.new(name: "Bill the Pony",
                      price_per_day: 10,
                      location: "Somerset, England",
                      description: "Embrace the heartwarming spirit of Middle-earth with a chance
                      to rent Bill the Pony, the unsung hero of the Fellowship's journey! Recall the
                      camaraderie and determination of Samwise Gamgee as you embark on your own adventures.
                      With Bill by your side, every step becomes a reminder of friendship's strength. Whether i
                      t's a leisurely stroll through scenic landscapes or a lighthearted trek to bond with loved ones,
                      Bill's reliable and gentle presence will uplift your spirits. Book now and let Bill be the delightful
                      companion that turns ordinary moments into extraordinary memories, echoing the resilience and loyalty
                      that made him a beloved member of the Fellowship.")
pony.user_id = samwise.id
pony.image = "vehicles/bill_the_pony.png"
pony.save


wonder_woman = User.new(first_name: "Diana", last_name: "Prince", email: "diana@gmail.com", password: "123456", bio: "I'm Wonder Woman, an Amazonian warrior princess with unparalleled strength and a lasso that compels the truth, dedicated to fighting for justice and defending the world from any threat.")
wonder_woman.image = "Users/wnder_woman.png"
wonder_woman.save


invisible_jet = Vehicle.new(name: "The Invisible Jet",
  price_per_day: 475,
  location: "Brooklyn, New York",
  description: "Unleash your inner Amazonian with the Invisible Jet, straight
  out of Wonder Woman's arsenal! Step into the shoes of a true warrior as you
  soar through the skies with unmatched grace and power. Harness the legacy of
  strength and courage, embracing the invisible force that propels you forward.
  A symbol of empowerment and resilience, this jet is your key to traversing the
  world with unyielding determination. Book now and experience the embodiment of
  Wonder Woman's legacy, where invisibility is not a disguise but a testament to
  the strength that lies within. The skies await your presence: claim your place
  among the legends!")
invisible_jet.user_id = wonder_woman.id
invisible_jet.image = "vehicles/invisible_jet.png"
invisible_jet.save


green_hornet = User.new(first_name: "Britt", last_name: "Reid", email: "hornet@gmail.com", password: "123456", bio: "I'm the Green Hornet, the not-so-average Joe who fights crime by night while managing a newspaper empire by day, all with a sidekick who's more into coffee than crime-fighting.")
green_hornet.image = "Users/green_hornet.png"
green_hornet.save

black_beauty = Vehicle.new(name: "Black Beauty",
  price_per_day: 75,
  location: "Detroit",
  description: "Rev up your style with the iconic Black Beauty from the Green
  Hornet! This ain't your average ride: it's a turbo-charged statement that
  says, 'I've got a sense of humor and a need for speed.'
  Cruise through the streets like a hero in disguise, or maybe just someone
  who's really good at pulling off a pair of shades. With gadgets that would make
  any spy jealous, the Black Beauty is perfect for those who want to add a dash
  of cheeky charm to their journey. Ready to turn heads and raise eyebrows? Book
  now and let your inner vigilante, or at least your inner jokester, hit the
  road in style!")
black_beauty.user_id = green_hornet.id
black_beauty.image = "vehicles/black_beauty.png"
black_beauty.save

ghost_rider = User.new(first_name: "Johnny", last_name: "Blaze", email: "ghost@gmail.com", password: "123456", bio: "I am the Ghost Rider, a flaming-skulled agent of vengeance from the depths of hell, burning a trail of punishment across the souls of the wicked!")
ghost_rider.image = "Users/ghost_rider.png"
ghost_rider.save

hellcycle = Vehicle.new(name: "Hellcycle",
  price_per_day: 110,
  location: "Waukegan, Illinois",
  description: "Ignite terror on wheels with the Hellcycle from Ghost Rider.
  Command attention and fear as you roar through the streets ablaze, capturing
  the essence of pure, unholy power. Seize this opportunity to become the
  harbinger of chaos at any event. But heed this ominous caution: mishandle this
  malevolent force, and the flames of retribution shall engulf you. The choice
  is yours: embrace the inferno or risk being consumed by it. The Hellcycle
  beckons, daring you to ride on the edge of damnation.")
hellcycle.user_id = ghost_rider.id
hellcycle.image = "vehicles/hellcycle.png"
hellcycle.save

ron = User.new(first_name: "Ronald", last_name: "Weasley", email: "ron@gmail.com", password: "123456", bio: "I'm Ron Weasley, the guy who's not just good at magic, but also an expert at handling my twin brothers' mischievous pranks!")
ron.image = "Users/Ron_Weasley.png"
ron.save

flying_car = Vehicle.new(name: "Flying Ford Anglia",
  price_per_day: 40,
  location: "Devon",
  description: "Want to add a touch of wizardry to your life? Cruise around like
  a true member of the Weasley family with our rental Ford Anglia straight out
  of Ron's escapades! Sure, it might not fly, turn invisible, or save you from
  spiders, but it's a Muggle classic with a magical twist. Impress your friends,
  confuse the neighbors, and relive the whimsical charm of the wizarding world—all
  without worrying about the Whomping Willow. Book now and enjoy a magical ride
  that's almost as unforgettable as Ron's misadventures at Hogwarts! Just remember,
  while it won't drive itself, it's guaranteed to drive you into smiles.")
flying_car.user_id = ron.id
flying_car.image = "vehicles/Flying_Ford_Anglia.png"
flying_car.save

pro_x= User.new(first_name: "Charles", last_name: "Xavier", email: "charlie@gmail.com", password: "123456", bio: "I am Professor X, the telepathic mutant founder of the X-Men, dedicated to guiding and protecting mutants while pushing the boundaries of human-mutant coexistence!")
pro_x.image = "Users/pro_x.png"
pro_x.save

x_jet = Vehicle.new(name: "X-Jet",
  price_per_day: 350,
  location: "Katonah, New york",
  description: "Elevate your reality with the X-Jet, the embodiment of
  Professor X's visionary genius. Crafted to carry the X-Men to the forefront of
  evolution, this extraordinary aircraft now offers you the chance to
  transcend the ordinary. Immerse yourself in the legacy of those who fought
  for a world that embraces diversity and empowers unity. As you commandeer
    the X-Jet, you inherit the spirit of Xavier's dream, soaring through skies
    that bear witness to the extraordinary within us all. Book now and become
    part of a lineage that redefines possibilities, proving that humanity's
    greatest strengths are unlocked when we rise together.")
x_jet.user_id = pro_x.id
x_jet.image = "vehicles/xmen_jet.png"
x_jet.save

chewie = User.new(first_name: "Chew", last_name: "Bacca", email: "chewie@gmail.com", password: "123456", bio: "Rrwaaargh graaaahr hnn-rowr aarrragghuuh raaarghwaa rarrragghuuh mwaamgah hooogh mwaamggg waaamgah, hooorgh raaargh waaamgah hnn-rowr hnn-rowr waaamgah hnn-rowr hnn-rowr.")
chewie.image = "Users/chewbacca.png"
chewie.save

falcon = Vehicle.new(name: "Millenium Falcon",
  price_per_day: 550,
  location: "Povoa de Varzim",
  description: "Embark on a stellar journey like no other aboard the Millennium
  Falcon! This legendary spacecraft is your ticket to weaving through galaxies,
  making memories among the stars. Channel your inner Han Solo and Chewbacca as
  you navigate the cosmos with the grace and history of a true icon. With its
  unparalleled speed and charm, the Millennium Falcon ensures a voyage filled
  with wonder and excitement. Whether you're a seasoned spacefarer or a newcomer
  to the cosmos, this rental experience promises an adventure of a lifetime.
  Book now and let the hum of hyperdrive engines serenade you to places where
  dreams and stars collide.")
falcon.user_id = chewie.id
falcon.image = "vehicles/falcon.png"
falcon.save

puts "Created #{Vehicle.count} new mobiles 🚀"
puts "Assigned #{User.count} to their respective cars listed 🏋🏽‍♀️"
