# destroy all records in main tables and associated tables
Trait.destroy_all
Deal.destroy_all
Tag.destroy_all

# create a list of traits
# renamed from 'interests' intp 'traits'
char1 = Trait.create(name: "fashion_guru")
char2 = Trait.create(name: "outdoors_enthusiast")
char3 = Trait.create(name: "family-oriented")

# create a list of deals
deal1 = Deal.create(name: "Nike shoes", description: "this is great deal", original_price: 140, new_price: 70, url: "www.nike.com", category: "sports", provider: "Nike inc", location: "Barcelona", discount: "50%")
deal2 = Deal.create(name: "REI festival tent", description: "amazing tent with rare discount", original_price: 200, new_price: 150, url: "www.rei.com", category: "sports", provider: "REI Coop", location: "Barcelona", discount: "25%")
deal3 = Deal.create(name: "TomTom GPS Watch", description: "latest generation GPS watch", original_price: 200, new_price: 200, url: "www.tomtom.com", category: "electronics", provider: "TomTom B.V", location: "Barcelona", discount: "2 for 1")

# create a list of tags
tag1 = Tag.create(name: "outdoors")
tag2 = Tag.create(name: "high-end")
tag3 = Tag.create(name: "rare discount")

# create a list of users
user1 = User.create!(email: "user1@gmail.com", password: "password", first_name: "Adam", last_name: "User1", location: "Barcelona")
user2 = User.create!(email: "user2@yahoo.com", password: "password", first_name: "Mathilda", last_name: "User2", location: "Barcelona")
user3 = User.create!(email: "user3@hotmail.com", password: "password", first_name: "Mykolas", last_name: "User3", location: "Barcelona")

# connect deals and tags
DealTag.create(deal_id: deal1.id, tag_id: tag1.id)
DealTag.create(deal_id: deal1.id, tag_id: tag2.id)
DealTag.create(deal_id: deal2.id, tag_id: tag2.id)
DealTag.create(deal_id: deal3.id, tag_id: tag2.id)
DealTag.create(deal_id: deal3.id, tag_id: tag3.id)

#connect users and characterstics
UserTrait.create(user_id: user1.id, trait_id: char1.id)
UserTrait.create(user_id: user1.id, trait_id: char2.id)
UserTrait.create(user_id: user2.id, trait_id: char2.id)
UserTrait.create(user_id: user3.id, trait_id: char2.id)
UserTrait.create(user_id: user3.id, trait_id: char3.id)

#connect deals with users
Offer.create!(deal_id: deal1.id, user_id: user1.id, score: 50, liked?: 0, disliked?: 1, bought?: 0)
Offer.create!(deal_id: deal2.id, user_id: user1.id, score: 75, liked?: 1, disliked?: 0, bought?: 1)
Offer.create!(deal_id: deal2.id, user_id: user2.id, score: 45, liked?: 1, disliked?: 0, bought?: 0)
Offer.create!(deal_id: deal3.id, user_id: user2.id, score: 75, liked?: 0, disliked?: 0, bought?: 0)
Offer.create!(deal_id: deal1.id, user_id: user3.id, score: 50, liked?: 0, disliked?: 0, bought?: 0)
Offer.create!(deal_id: deal3.id, user_id: user3.id, score: 95, liked?: 0, disliked?: 0, bought?: 1)
