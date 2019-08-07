User.create(username: "NickBond", password: "photo", password_confirmation: "photo")

Blogpost.create(
                  title: "Some Thoughts of Mine",
                  content: "I was recently in Scotland for work and I saw some of the endangers red kites. After taking pictures of them a fantastic thought struck me to help solve their endanger status. What if we made it mandatory for every parent in the UK to raise a red kite when they raise a child. When a child is born we can send a red kite chick to the family. Given they are already raising a small human it shouldn’t be too much extra work to raise one of these amazing animals. What do you folks think? Until next time Photo Fans!",
                  created_at: 2.days.ago
               )
               
 Blogpost.create(
                   title: "You’re better off without a Phone",
                   content: "The other day I was tracking an elk through the Norwegian Fjords and I saw a very rare parrot perched on an old secret heavy water development plant built in 1943. The parrot was a Norwegian Blue and is one of the rarest in the world so I knew I had to take a picture off it. As I was about  to press the camera button on my Nokia it started to ring and flew out of my hand from the vibrations. It fell all the way down the fjord and landed in the river with a huge splash. Before I could bring out my back-up phone to take a picture with, the parrot, startled by the ringing, splashing and my screaming, had flown away. A sad story indeed. Perhaps we would be better off without phones!",
                   created_at: 2.months.ago
                )
                
Photo.create(
              subject: "Plants",
              caption: "Flower",
              picture: File.open(Rails.root + "app/assets/images/photos/IMAGE (1).jpg")
            )
            
Photo.create(
              subject: "Vehicles",
              caption: "Hurriance Plane",
              picture: File.open(Rails.root + "app/assets/images/photos/IMAGE (2).jpg")
            )
            
Photo.create(
              subject: "Animals",
              caption: "Goose in water",
              picture: File.open(Rails.root + "app/assets/images/photos/IMAGE (3).jpg")
            )
