char1 = Characteristic.new(name: "fashion_guru")
char2 = Characteristic.new(name: "outdoors_enthusiast")
char3 = Characteristic.new(name: "family-oriented")

deal1 = Deal.new(name: "Nike shoes", description: "this is great deal", original_price: 140, new_price: 70, url: "www.nike.com", category: "sports", provider: "Nike inc", location: "Barcelona", discount: "50%")
deal2 = Deal.new(name: "REI festival tent", description: "amazing tent with rare discount", original_price: 200, new_price: 150, url: "www.rei.com", category: "sports", provider: "REI Coop", location: "Barcelona", discount: "25%")
deal3 = Deal.new(name: "TomTom GPS Watch", description: "latest generation GPS watch", original_price: 200, new_price: 200, url: "www.tomtom.com", category: "electronics", provider: "TomTom B.V", location: "Barcelona", discount: "2 for 1")

tag1 = Tag.new(name: "outdoors")
tag2 = Tag.new(name: "high-end")
tag3 = Tag.new(name: "rare discount")

user1 = User.new(email: "user1@google.com", password: "password", first_name: "Adam", last_name: "User1", location: "Barcelona")
user2 = User.new(email: "user2@yahoo.com", password: "password", first_name: "Mathilda", last_name: "User2", location: "Barcelona")
user3 = User.new(email: "user3@hotmail.com", password: "password", first_name: "Mykolas", last_name: "User3", location: "Barcelona")

Deal_tag.new(deal_id: deal1, tag_id: tag1)
Deal_tag.new(deal_id: deal1, tag_id: tag2)
Deal_tag.new(deal_id: deal2, tag_id: tag2)
Deal_tag.new(deal_id: deal3, tag_id: tag2)
Deal_tag.new(deal_id: deal3, tag_id: tag3)

User_characteristic.new(user_id: user1, characteristic_id: char1)
User_characteristic.new(user_id: user1, characteristic_id: char2)
User_characteristic.new(user_id: user2, characteristic_id: char2)
User_characteristic.new(user_id: user3, characteristic_id: char2)
User_characteristic.new(user_id: user3, characteristic_id: char3)

User_deal.new(deal_id: deal1, user_id: user1, score: 50, saved?: 0, disliked?: 1, bought?: 0)
User_deal.new(deal_id: deal2, user_id: user1, score: 75, saved?: 1, disliked?: 0, bought?: 1)
User_deal.new(deal_id: deal2, user_id: user2, score: 45, saved?: 1, disliked?: 0, bought?: 0)
User_deal.new(deal_id: deal3, user_id: user2, score: 75, saved?: 0, disliked?: 0, bought?: 0)
User_deal.new(deal_id: deal1, user_id: user3, score: 50, saved?: 0, disliked?: 0, bought?: 0)
User_deal.new(deal_id: deal3, user_id: user3, score: 95, saved?: 0, disliked?: 0, bought?: 1)

