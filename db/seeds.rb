# destroy all records in main tables and associated tables
Trait.destroy_all
Deal.destroy_all
Tag.destroy_all
User.destroy_all

# ORDER BELOW MATTERS!

# create a list of deals
deal1 = Deal.create(name: "3 day Bulgaria Ski, Spa, & Flights"), description: "4* half board Ski trip in Borovets, including flight from Gatwick", original_price: 263, new_price: 149, discount: "-43%", provider: "Tour Center.co.uk", url:"https://www.livingsocial.co.uk/deal/escapes/1685158/129pp-tour-center-2nt-4-half-board-bulgaria-ski", category: "sports", location: "London")
deal2 = Deal.create(name: "Nike premium Flyknit running shoes"), description: "Extraordinary comfortable shoes wtih ankle support and dynamic fit ", original_price: 165, new_price: 115, discount: "-30%", provider: "Nike.co.uk", url:"http://store.nike.com/gb/en_gb/pd/zoom-mercurial-flyknit-shoe/pid-11168375/pgid-11826844", category: "sports", location: "London")
deal3 = Deal.create(name: "Nordica La Nina Skis (women's)"), description: "Effortless float, super-smooth edge hold and versatility to go from hardpack to bottomless to bumps, all on the same run, the La Nina skis ensure every run is uniquely perfect", original_price: 849, new_price: 256, discount: "-70%", provider: "Rei.com", url:"https://www.rei.com/rei-garage/product/887649/nordica-la-nina-skis-womens", category: "sports", location: "London")
deal4 = Deal.create(name: "Mountain Hardwear Hoopla 4 Tent"), description: "Compact and light enough to serve as an emergency shelter or large enough for a backpacking group shelter, the Mountain Hardwear Hoopla 4 is a simple floorless shelter designed for the minimalist", original_price: 375, new_price: 180, discount: "-51%", provider: "Rei.com", url:"https://www.rei.com/rei-garage/product/103406/mountain-hardwear-hoopla-4-tent", category: "sports", location: "London")
deal5 = Deal.create(name: "Friday & Saturday Karting"), description: " get 3 karting sessions for the price of 2 on Friday and Saturday evenings. Get to your local track after 7pm and bring some extra adrenaline with you as you are going to need it", discount: "3 for 2", provider: "team-sports.co.uk", url:"https://www.team-sport.co.uk/go-karting-offers/three-for-two/", category: "sports", location: "London")

# create a list of users
user1 = User.create!(email: "user1@gmail.com", password: "password", first_name: "Adam", last_name: "User1", location: "Barcelona")
user2 = User.create!(email: "user2@yahoo.com", password: "password", first_name: "Mathilda", last_name: "User2", location: "Barcelona")
user3 = User.create!(email: "user3@hotmail.com", password: "password", first_name: "Mykolas", last_name: "User3", location: "Barcelona")

# create a list of traits
trait1 = Trait.create(name: "fashion guru")
trait2 = Trait.create(name: "outdoors enthusiast")
trait3 = Trait.create(name: "family-oriented")
trait4 = Trait.create(name: "team-sports lover")
trait5 = Trait.create(name: "brands follower")

# create a list of tags
tag1 = Tag.create(name: "outdoors")
tag2 = Tag.create(name: "high-end")
tag3 = Tag.create(name: "gadget")
tag4 = Tag.create(name: "multiple participants")
tag5 = Tag.create(name: "rare discount")
tag6 = Tag.create(name: "family-friendly")
tag7 = Tag.create(name: "health")
tag8 = Tag.create(name: "skiing")
tag9 = Tag.create(name: "trip")
tag10 = Tag.create(name: "experience")
tag11 = Tag.create(name: "apparel")
tag12 = Tag.create(name: "jogging")
tag13 = Tag.create(name: "student")
tag14 = Tag.create(name: "automotive")

# create weights listing
Weight.create(trait: trait1, tag: tag2, weight: 0.7 )
Weight.create(trait: trait1, tag: tag3, weight: 0.3 )
Weight.create(trait: trait1, tag: tag5, weight: 0.4 )
Weight.create(trait: trait2, tag: tag1, weight: 0.8 )
Weight.create(trait: trait2, tag: tag5, weight: 0.2 )
Weight.create(trait: trait3, tag: tag1, weight: 0.6 )
Weight.create(trait: trait3, tag: tag3, weight: 0.3 )
Weight.create(trait: trait3, tag: tag4, weight: 0.6 )
Weight.create(trait: trait4, tag: tag1, weight: 0.3 )
Weight.create(trait: trait4, tag: tag4, weight: 0.8 )
Weight.create(trait: trait5, tag: tag2, weight: 0.8 )
Weight.create(trait: trait5, tag: tag3, weight: 0.2 )
Weight.create(trait: trait5, tag: tag5, weight: 0.6 )

#connect users and characterstics
UserTrait.create(user: user1, trait: trait2)
UserTrait.create(user: user1, trait: trait3)
UserTrait.create(user: user2, trait: trait1)
UserTrait.create(user: user2, trait: trait4)
UserTrait.create(user: user2, trait: trait5)
UserTrait.create(user: user3, trait: trait2)
UserTrait.create(user: user3, trait: trait3)

# connect deals and tags
DealTag.create(deal: deal1, tag: tag1)
DealTag.create(deal: deal1, tag: tag6)
DealTag.create(deal: deal1, tag: tag8)
DealTag.create(deal: deal1, tag: tag9)
DealTag.create(deal: deal2, tag: tag1)
DealTag.create(deal: deal2, tag: tag2)
DealTag.create(deal: deal2, tag: tag11)
DealTag.create(deal: deal2, tag: tag12)
DealTag.create(deal: deal3, tag: tag1)
DealTag.create(deal: deal3, tag: tag2)
DealTag.create(deal: deal3, tag: tag3)
DealTag.create(deal: deal3, tag: tag8)
DealTag.create(deal: deal4, tag: tag1)
DealTag.create(deal: deal4, tag: tag3)
DealTag.create(deal: deal4, tag: tag5)
DealTag.create(deal: deal4, tag: tag6)
DealTag.create(deal: deal4, tag: tag9)
DealTag.create(deal: deal4, tag: tag4)
DealTag.create(deal: deal5, tag: tag6)
DealTag.create(deal: deal5, tag: tag10)
DealTag.create(deal: deal5, tag: tag14)


