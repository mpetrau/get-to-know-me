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
trait5 = Trait.create(name: "brands follower")

# create a list of tags
tag1 = Tag.create(name: "outdoors")
tag2 = Tag.create(name: "high-end")
tag3 = Tag.create(name: "gadget")
tag4 = Tag.create(name: "multiple participants")
tag5 = Tag.create(name: "rare discount")

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


# create a list of deals
deal1 = Deal.create(name: "Nike shoes", description: "this is great deal", original_price: 140, new_price: 70, url: "www.nike.com", category: "sports", provider: "Nike inc", location: "Barcelona", discount: "50%")
deal2 = Deal.create(name: "REI festival tent", description: "amazing tent with rare discount", original_price: 200, new_price: 150, url: "www.rei.com", category: "sports", provider: "REI Coop", location: "Barcelona", discount: "25%")
deal3 = Deal.create(name: "TomTom GPS Watch", description: "latest generation GPS watch", original_price: 200, new_price: 200, url: "www.tomtom.com", category: "electronics", provider: "TomTom B.V", location: "Barcelona", discount: "2 for 1")

# connect deals and tags
DealTag.create(deal: deal1, tag: tag1)
DealTag.create(deal: deal1, tag: tag2)
DealTag.create(deal: deal2, tag: tag1)
DealTag.create(deal: deal2, tag: tag2)
DealTag.create(deal: deal2, tag: tag4)
DealTag.create(deal: deal2, tag: tag5)
DealTag.create(deal: deal3, tag: tag1)
DealTag.create(deal: deal3, tag: tag3)


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
