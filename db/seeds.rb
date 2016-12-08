# destroy all records in main tables and associated tables
Trait.destroy_all
Deal.destroy_all
Tag.destroy_all
User.destroy_all

# create a list of traits
# renamed from 'interests' intp 'traits'
trait1 = Trait.create(name: "fashion guru")
trait2 = Trait.create(name: "outdoors enthusiast")
trait3 = Trait.create(name: "family-oriented")
trait4 = Trait.create(name: "team-sports lover")
trait5 = Trait.create(name: "gym bunny")
trait6 = Trait.create(name: "jogger")
trait7 = Trait.create(name: "thrillseeker")
trait8 = Trait.create(name: "health conscious")
trait9 = Trait.create(name: "brands follower")
trait10 = Trait.create(name: "gadget-lover")
trait11 = Trait.create(name: "skiing nut")

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

# create weights listing
Weight.create(trait: trait1, tag: tag2, weight: 0.8 )
Weight.create(trait: trait1, tag: tag11, weight: 0.7 )
Weight.create(trait: trait2, tag: tag1, weight: 0.8 )
Weight.create(trait: trait2, tag: tag4, weight: 0.3 )
Weight.create(trait: trait2, tag: tag8, weight: 0.5 )
Weight.create(trait: trait2, tag: tag12, weight: 0.2 )
Weight.create(trait: trait3, tag: tag4, weight: 0.6 )
Weight.create(trait: trait3, tag: tag6, weight: 0.9 )
Weight.create(trait: trait3, tag: tag9, weight: 0.3 )
Weight.create(trait: trait4, tag: tag1, weight: 0.3 )
Weight.create(trait: trait4, tag: tag4, weight: 0.8 )
Weight.create(trait: trait4, tag: tag10, weight: 0.2 )
Weight.create(trait: trait5, tag: tag3, weight: 0.3 )
Weight.create(trait: trait5, tag: tag7, weight: 0.8 )
Weight.create(trait: trait5, tag: tag12, weight: 0.5 )
Weight.create(trait: trait6, tag: tag1, weight: 0.6 )
Weight.create(trait: trait6, tag: tag7, weight: 0.5 )
Weight.create(trait: trait6, tag: tag12, weight: 0.9 )
Weight.create(trait: trait6, tag: tag11, weight: 0.3 )
Weight.create(trait: trait7, tag: tag1, weight: 0.5 )
Weight.create(trait: trait7, tag: tag8, weight: 0.7 )
Weight.create(trait: trait7, tag: tag9, weight: 0.3 )
Weight.create(trait: trait7, tag: tag10, weight: 0.6 )
Weight.create(trait: trait8, tag: tag7, weight: 0.9 )
Weight.create(trait: trait8, tag: tag12, weight: 0.4 )
Weight.create(trait: trait8, tag: tag1, weight: 0.2 )
Weight.create(trait: trait9, tag: tag2, weight: 0.9 )
Weight.create(trait: trait9, tag: tag5, weight: 0.3 )
Weight.create(trait: trait9, tag: tag11, weight: 0.8 )
Weight.create(trait: trait10, tag: tag2, weight: 0.6 )
Weight.create(trait: trait10, tag: tag3, weight: 0.9 )
Weight.create(trait: trait10, tag: tag8, weight: 0.3 )
Weight.create(trait: trait11, tag: tag1, weight: 0.6 )
Weight.create(trait: trait11, tag: tag8, weight: 0.9 )
Weight.create(trait: trait11, tag: tag9, weight: 0.7 )

# create a list of deals
deal6 = Deal.create(name: "Dunlop trampoline", description: "£30 off 6ft Dunlop trampoline", original_price: 100, new_price: 70, url: "http://www.sportsdirect.com/dunlop-6ft-trampoline-with-enclosure-890410?colcode=89041003&awc=5374_1481193954_d44c6cc70caa1c430bfe594aa08c4c6b&utm_source=Affiliatewindow&utm_medium=Affiliates&utm_campaign=awin", category: "sports", provider: "sportsdirect", location: "London", discount: "£30 off")
deal7 = Deal.create(name: "Sports massage and physio session", description: "A 45 minute sports massage and physio session with analysis and ultrasound", original_price: 48, new_price: 24, url: "https://www.groupon.co.uk/deals/ca-medical-london-ltd-3", category: "sports", provider: "groupon", location: "London", discount: "50%")
deal8 = Deal.create(name: "Clay Shooting experience", description: "Your experience will include all equipment hire, clays and cartridges as well as expert tuition.", original_price: 158, new_price: 79, url: "", category: "sports", provider: "Virgin Experiences", location: "London", discount: "50%")
deal9 = Deal.create(name: "20% student discount Sweaty Betty", description: "20% student discount online at Sweaty Betty", url: "http://www.sweatybetty.com/studentdiscount/", category: "sports", provider: "Sweaty Betty", location: "London", discount: "20%")
deal10 = Deal.create(name: "Buy one get another half price at Holland and Barret", description: "All Holland and Barret sports nutrition products", url: "http://www.hollandandbarrett.com/shop/sports-nutrition/#icmp=Offers_OFF_1_P3_4_sports", category: "sports", provider: "Holland and Barret", location: "London", discount: "Buy one get another half price")

# connect deals and tags
DealTag.create(deal: deal6, tag: tag1)
DealTag.create(deal: deal6, tag: tag6)
DealTag.create(deal: deal6, tag: tag4)
DealTag.create(deal: deal7, tag: tag5)
DealTag.create(deal: deal7, tag: tag7)
DealTag.create(deal: deal7, tag: tag10)
DealTag.create(deal: deal8, tag: tag1)
DealTag.create(deal: deal8, tag: tag2)
DealTag.create(deal: deal8, tag: tag4)
DealTag.create(deal: deal8, tag: tag10)
DealTag.create(deal: deal9, tag: tag2)
DealTag.create(deal: deal9, tag: tag11)
DealTag.create(deal: deal9, tag: tag13)
DealTag.create(deal: deal10, tag: tag5)
DealTag.create(deal: deal10, tag: tag7)


# create a list of users
user1 = User.create!(email: "user1@gmail.com", password: "password", first_name: "Adam", last_name: "User1", location: "Barcelona")
user2 = User.create!(email: "user2@yahoo.com", password: "password", first_name: "Mathilda", last_name: "User2", location: "Barcelona")
user3 = User.create!(email: "user3@hotmail.com", password: "password", first_name: "Mykolas", last_name: "User3", location: "Barcelona")


#connect users and characterstics
UserTrait.create(user: user1, trait: trait2)
UserTrait.create(user: user1, trait: trait3)
UserTrait.create(user: user2, trait: trait1)
UserTrait.create(user: user2, trait: trait4)
UserTrait.create(user: user2, trait: trait5)
UserTrait.create(user: user3, trait: trait2)
UserTrait.create(user: user3, trait: trait3)
