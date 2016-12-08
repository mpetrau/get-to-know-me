# destroy all records in main tables and associated tables
Trait.destroy_all
Deal.destroy_all
Tag.destroy_all
User.destroy_all

# ORDER BELOW MATTERS!

# create a list of deals
deal1 = Deal.create(name: "Nike shoes", description: "this is great deal", original_price: 140, new_price: 70, url: "www.nike.com", category: "sports", provider: "Nike inc", location: "Barcelona", discount: "50%")
deal2 = Deal.create(name: "REI festival tent", description: "amazing tent with rare discount", original_price: 200, new_price: 150, url: "www.rei.com", category: "sports", provider: "REI Coop", location: "Barcelona", discount: "25%")
deal3 = Deal.create(name: "TomTom GPS Watch", description: "latest generation GPS watch", original_price: 200, new_price: 200, url: "www.tomtom.com", category: "electronics", provider: "TomTom B.V", location: "Barcelona", discount: "2 for 1")

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
DealTag.create(deal: deal1, tag: tag2)
DealTag.create(deal: deal2, tag: tag1)
DealTag.create(deal: deal2, tag: tag2)
DealTag.create(deal: deal2, tag: tag4)
DealTag.create(deal: deal2, tag: tag5)
DealTag.create(deal: deal3, tag: tag1)
DealTag.create(deal: deal3, tag: tag3)

deal11 = Deal.create(name: "Ski & Sporting Sunglasses", description: "New Season Collection - New With Labels", original_price: 15, new_price: 9, url: "https://www.amazon.co.uk/X-Loop-Extreme-Sporting-Sunglasses-Adults/dp/B00C43QLNG/ref=gbps_tit_s-3_4168_863da620?smid=AR00CFUBZLBEZ&pf_rd_p=c4427c61-bcfc-4769-adc2-397824774168&pf_rd_s=slot-3&pf_rd_t=701&pf_rd_i=gb_main&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_r=SE17X7JH2BYCBQRGJ8GN", category: "sports", provider: "X-Loop", location: "London", discount: "40%")
DealTag.create(deal: deal1, tag: tag1)
DealTag.create(deal: deal1, tag: tag5)
DealTag.create(deal: deal1, tag: tag8)
DealTag.create(deal: deal1, tag: tag12)

deal12 = Deal.create(name: "North Face Men's Vault Backpack", description: "FlexVent injection-molded shoulder straps", original_price: 55, new_price: 35, url: " https://www.amazon.co.uk/North-Face-Mens-Vault-Backpack/dp/B00OSE8E0C/ref=gbps_img_s-3_4168_80735516?smid=A3P5ROKL5A1OLE&pf_rd_p=c4427c61-bcfc-4769-adc2-397824774168&pf_rd_s=slot-3&pf_rd_t=701&pf_rd_i=gb_main&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_r=YVGEGYJVJWKFSVRCYVZD", category: "sports", provider: "The North Face", location: "London", discount: "36%")
DealTag.create(deal: deal2, tag: tag1)
DealTag.create(deal: deal2, tag: tag5)
DealTag.create(deal: deal2, tag: tag6)
DealTag.create(deal: deal2, tag: tag9)
DealTag.create(deal: deal2, tag: tag9)

deal13 = Deal.create(name: "Resistance Band Set", description: "This stackable set of resistance bands can produce up to 75 LBS", original_price: 110, new_price: 19, url: "https://www.amazon.co.uk/Black-Mountain-Resistance-Exercise-Multi-Colour/dp/7245456313/ref=gbps_img_s-3_4168_959f8435?smid=A3P5ROKL5A1OLE&pf_rd_p=c4427c61-bcfc-4769-adc2-397824774168&pf_rd_s=slot-3&pf_rd_t=701&pf_rd_i=gb_main&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_r=SCR5B4E8ZSDPRGV65P3G", category: "sports", provider: "Black Mountain", location: "London", discount: "78%")
DealTag.create(deal: deal3, tag: tag5)
DealTag.create(deal: deal3, tag: tag7)

deal14 = Deal.create(name: "Ski Suncream and Lipbalm Pack", description: "20 tube of suncream with integrated SPF 15 lipbalm in dome", original_price: 10, new_price: 7, url: "https://www.amazon.co.uk/Suncream-Lipbalm-Pack-lanyard-SPF30/dp/B001URWNDY/ref=sr_1_1?ie=UTF8&qid=1481195523&sr=8-1&keywords=skiing", category: "sports", provider: "Manbi", location: "London", discount: "25%")
deal3 = Deal.create(name: "TomTom GPS Watch", description: "latest generation GPS watch", original_price: 200, new_price: 200, url: "www.tomtom.com", category: "electronics", provider: "TomTom B.V", location: "Barcelona", discount: "2 for 1")
DealTag.create(deal: deal4, tag: tag8)
DealTag.create(deal: deal4, tag: tag1)
DealTag.create(deal: deal4, tag: tag6)
DealTag.create(deal: deal4, tag: tag9)
DealTag.create(deal: deal4, tag: tag12)

deal3 = Deal.create(name: "Functional Thermal Underwear", description: "Designed using double-seamless technology with top quality thermal properties", original_price: 79, new_price: 23, url: "https://www.amazon.co.uk/THERMOTECH-Functional-Thermal-Underwear-Breathable/dp/B01769P6NS/ref=sr_1_7?ie=UTF8&qid=1481197179&sr=8-7&keywords=skiing", category: "sports", provider: "Norde", location: "London", discount: "Save 72%")
DealTag.create(deal: deal5, tag: tag1)
DealTag.create(deal: deal5, tag: tag5)
DealTag.create(deal: deal5, tag: tag8)
DealTag.create(deal: deal5, tag: tag11)


