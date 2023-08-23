User.destroy_all
Vehicle.destroy_all
Booking.destroy_all

draco = User.new(first_name: "Draco", last_name: "Malfoy", email: "draco@gmail.com", password: "123456",bio: "Unapologetically silver-tongued scion navigating a world of wizardry with aristocratic flair.")
draco.image = "Users/Draco.png"
draco.save

nimbus = Vehicle.new(name: "Nimbus",
                     price_per_day: 50,
                     location: "London",
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
                         location: "London",
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
                        location: "New York",
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
                        location: "Chicago",
                        description: "Experience Porto's iconic thrill with the Batmobile. Navigate the cityscape in
                        unparalleled style and power. Our Batmobiles offer cutting-edge technology,sleek design, and
                        safety features for your journey. From nights out to secret missions, embrace the vigilante
                        spirit.")
batmobile.user_id = batman.id
batmobile.image = "vehicles/batmobile.png"
batmobile.save

bat = Vehicle.new(name: "The Bat",
                  price_per_day: 400,
                  location: "Chicago",
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
                   location: "New York",
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
                     location: "New York",
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
                       location: "California",
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
                       location: "California",
                       description: "Yo, it's your buddy Carter from Rush Hour, and guess what? My sweet Chevrolet
                       Corvette Stingray C3 is up for grabs! Picture yourself cruisin' like a boss, turning heads like
                       I turn bad guys into punchlines. This car's got more attitude than I do — and that's saying
                       something. Just remember, treat it right, or you'll have me chasing you like I'm after bad guys
                       in Hong Kong. And remember, don't you ever touch a black man's radio fool!")
  stingray.user_id = carter.id
  stingray.image = "vehicles/carter_car.png"
stingray.save

puts "Created #{Vehicle.count} new mobiles 🚀"
puts "Assigned #{User.count} to their respective cars listed 🏋🏽‍♀️"
