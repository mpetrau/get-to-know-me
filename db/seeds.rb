# destroy all records in main tables and associated tables
Characteristic.destroy_all
Deal.destroy_all
Tag.destroy_all

# create a list of characteristics
# renamed from 'interests' intp 'characteristics'
char1 = Characteristic.create(name: "fashion_guru")
char2 = Characteristic.create(name: "outdoors_enthusiast")
char3 = Characteristic.create(name: "family-oriented")

# create a list of deals
deal1 = Deal.create(name: "Nike shoes", description: "this is great deal", original_price: 140, new_price: 70, url: "www.nike.com", category: "sports", provider: "Nike inc", location: "Barcelona", discount: "50%")
deal2 = Deal.create(name: "REI festival tent", description: "amazing tent with rare discount", original_price: 200, new_price: 150, url: "www.rei.com", category: "sports", provider: "REI Coop", location: "Barcelona", discount: "25%")
deal3 = Deal.create(name: "TomTom GPS Watch", description: "latest generation GPS watch", original_price: 200, new_price: 200, url: "www.tomtom.com", category: "electronics", provider: "TomTom B.V", location: "Barcelona", discount: "2 for 1")

# create a list of tags
tag1 = Tag.create(name: "outdoors")
tag2 = Tag.create(name: "high-end")
tag3 = Tag.create(name: "rare discount")

# create a list of users
user1 = User.create(email: "user1@gmail.com", password: "password", first_name: "Adam", last_name: "User1", location: "Barcelona")
user2 = User.create(email: "user2@yahoo.com", password: "password", first_name: "Mathilda", last_name: "User2", location: "Barcelona")
user3 = User.create(email: "user3@hotmail.com", password: "password", first_name: "Mykolas", last_name: "User3", location: "Barcelona")

# connect deals and tags
DealTag.create(deal_id: deal1.id, tag_id: tag1.id)
DealTag.create(deal_id: deal1.id, tag_id: tag2.id)
DealTag.create(deal_id: deal2.id, tag_id: tag2.id)
DealTag.create(deal_id: deal3.id, tag_id: tag2.id)
DealTag.create(deal_id: deal3.id, tag_id: tag3.id)

#connect users and characterstics
UserCharacteristic.create(user_id: user1.id, characteristic_id: char1.id)
UserCharacteristic.create(user_id: user1.id, characteristic_id: char2.id)
UserCharacteristic.create(user_id: user2.id, characteristic_id: char2.id)
UserCharacteristic.create(user_id: user3.id, characteristic_id: char2.id)
UserCharacteristic.create(user_id: user3.id, characteristic_id: char3.id)

#connect deals with users
UserDeal.create(deal_id: deal1.id, user_id: user1.id, score: 50, saved?: 0, disliked?: 1, bought?: 0)
UserDeal.create(deal_id: deal2.id, user_id: user1.id, score: 75, saved?: 1, disliked?: 0, bought?: 1)
UserDeal.create(deal_id: deal2.id, user_id: user2.id, score: 45, saved?: 1, disliked?: 0, bought?: 0)
UserDeal.create(deal_id: deal3.id, user_id: user2.id, score: 75, saved?: 0, disliked?: 0, bought?: 0)
UserDeal.create(deal_id: deal1.id, user_id: user3.id, score: 50, saved?: 0, disliked?: 0, bought?: 0)
UserDeal.create(deal_id: deal3.id, user_id: user3.id, score: 95, saved?: 0, disliked?: 0, bought?: 1)
