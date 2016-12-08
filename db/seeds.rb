# destroy all records in main tables and associated tables
Trait.destroy_all
Deal.destroy_all
Tag.destroy_all
User.destroy_all

# ORDER BELOW MATTERS!

# create a list of deals

deal1 = Deal.create(name: "3 day Bulgaria Ski, Spa, & Flights", description: "4* half board Ski trip in Borovets, including flight from Gatwick", original_price: 263, new_price: 149, discount: "-43%", provider: "Tour Center.co.uk", url:"https://www.livingsocial.co.uk/deal/escapes/1685158/129pp-tour-center-2nt-4-half-board-bulgaria-ski", category: "sports", location: "London", photo:"https://static.livingsocial.co.uk/images/deal/1685158/202101-travel.jpg")
deal2 = Deal.create(name: "Nike premium Flyknit running shoes", description: "Extraordinary comfortable shoes wtih ankle support and dynamic fit ", original_price: 165, new_price: 115, discount: "-30%", provider: "Nike.co.uk", url:"http://store.nike.com/gb/en_gb/pd/zoom-mercurial-flyknit-shoe/pid-11168375/pgid-11826844", category: "sports", location: "London", photo: "http://images2.nike.com/is/image/DotCom/PDP_HERO/852616_001_E_PREM/zoom-mercurial-flyknit-shoe.jpg")
deal3 = Deal.create(name: "Nordica La Nina Skis (women's)", description: "Effortless float, super-smooth edge hold and versatility to go from hardpack to bottomless to bumps, all on the same run, the La Nina skis ensure every run is uniquely perfect", original_price: 849, new_price: 256, discount: "-70%", provider: "Rei.com", url:"https://www.rei.com/rei-garage/product/887649/nordica-la-nina-skis-womens", category: "sports", location: "London", photo:"http://skipass.fr/p/guidematos/1/0/104806/174930.jpg")
deal4 = Deal.create(name: "Mountain Hardwear Hoopla 4 Tent", description: "Compact and light enough to serve as an emergency shelter or large enough for a backpacking group shelter, the Mountain Hardwear Hoopla 4 is a simple floorless shelter designed for the minimalist", original_price: 375, new_price: 180, discount: "-51%", provider: "Rei.com", url:"https://www.rei.com/rei-garage/product/103406/mountain-hardwear-hoopla-4-tent", category: "sports", location: "London", photo:"https://www.rei.com/media/e283347a-05c4-404e-8f27-de38b3aa8408")
deal5 = Deal.create(name: "Friday & Saturday Karting", description: " get 3 karting sessions for the price of 2 on Friday and Saturday evenings. Get to your local track after 7pm and bring some extra adrenaline with you as you are going to need it", discount: "3 for 2", provider: "team-sports.co.uk", url:"https://www.team-sport.co.uk/go-karting-offers/three-for-two/", category: "sports", location: "London", photo: "http://despedidasgandia.partyhotel.es/img/img-ph/actividades/karting-01.jpg")
deal6 = Deal.create(name: "Dunlop trampoline", description: "£30 off 6ft Dunlop trampoline", original_price: 100, new_price: 70, url: "http://www.sportsdirect.com/dunlop-6ft-trampoline-with-enclosure-890410?colcode=89041003&awc=5374_1481193954_d44c6cc70caa1c430bfe594aa08c4c6b&utm_source=Affiliatewindow&utm_medium=Affiliates&utm_campaign=awin", category: "sports", provider: "sportsdirect", location: "London", discount: "£30 off", photo: "http://images.sportsdirect.com/images/products/89041003_l.jpg" )
deal7 = Deal.create(name: "Sports massage and physio session", description: "A 45 minute sports massage and physio session with analysis and ultrasound", original_price: 48, new_price: 24, url: "https://www.groupon.co.uk/deals/ca-medical-london-ltd-3", category: "sports", provider: "groupon", location: "London", discount: "50%", photo:"https://img.grouponcdn.com/deal/tAWSs6uHKGiZL35q6hYz/gV-1500x900/v1/c700x420.jpg")
deal8 = Deal.create(name: "Clay Shooting experience", description: "Your experience will include all equipment hire, clays and cartridges as well as expert tuition.", original_price: 158, new_price: 79, url: "https://www.virginexperiencedays.co.uk/clay-shooting-experience-with-seasonal-refreshments-sp1", category: "sports", provider: "Virgin Experiences", location: "London", discount: "50%", photo: "https://www.virginexperiencedays.co.uk/content/img/product/large/clay-shooting-experience-with-08103440.jpg")
deal9 = Deal.create(name: "20% student discount Sweaty Betty", description: "20% student discount online at Sweaty Betty", url: "http://www.sweatybetty.com/studentdiscount/", category: "sports", provider: "Sweaty Betty", location: "London", discount: "20%", photo:"http://www.sweatybetty.com/images/core/sblogo2.png")
deal10 = Deal.create(name: "Buy one get another half price at Holland and Barret", description: "All Holland and Barret sports nutrition products", url: "http://www.hollandandbarrett.com/shop/sports-nutrition/#icmp=Offers_OFF_1_P3_4_sports", category: "sports", provider: "Holland and Barret", location: "London", discount: "Buy one get another half price", photo:"http://www.hollandandbarrett.com/promotionuploads_new/hb/atg/images/main-logo-hb.png?Lo0P=e222da7a2d829c90b5dcfb35851d6b45Ds")
deal11 = Deal.create(name: "Ski & Sporting Sunglasses", description: "New Season Collection - New With Labels", original_price: 15, new_price: 9, url: "https://www.amazon.co.uk/X-Loop-Extreme-Sporting-Sunglasses-Adults/dp/B00C43QLNG/ref=gbps_tit_s-3_4168_863da620?smid=AR00CFUBZLBEZ&pf_rd_p=c4427c61-bcfc-4769-adc2-397824774168&pf_rd_s=slot-3&pf_rd_t=701&pf_rd_i=gb_main&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_r=SE17X7JH2BYCBQRGJ8GN", category: "sports", provider: "X-Loop", location: "London", discount: "40%", photo:"http://planetcycling.co.uk/wp-content/uploads/2016/04/X-Loop-Xtreme-Sunglasses-New-2014-Model-Full-UV-400-Protection-Perfect-for-Ski-Sports-Perfect-for-Ski-Snowboard-Sports-Cycling-Fishing-Biking-Unisex-Sports-Sunglasses-0.jpg")
deal12 = Deal.create(name: "North Face Men's Vault Backpack", description: "FlexVent injection-molded shoulder straps", original_price: 55, new_price: 35, url: " https://www.amazon.co.uk/North-Face-Mens-Vault-Backpack/dp/B00OSE8E0C/ref=gbps_img_s-3_4168_80735516?smid=A3P5ROKL5A1OLE&pf_rd_p=c4427c61-bcfc-4769-adc2-397824774168&pf_rd_s=slot-3&pf_rd_t=701&pf_rd_i=gb_main&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_r=YVGEGYJVJWKFSVRCYVZD", category: "sports", provider: "The North Face", location: "London", discount: "36%", photo: "https://images-eu.ssl-images-amazon.com/images/I/91lFw6wBH1L._SL1500_.jpg")
deal13 = Deal.create(name: "Resistance Band Set", description: "This stackable set of resistance bands can produce up to 75 LBS", original_price: 110, new_price: 19, url: "https://www.amazon.co.uk/Black-Mountain-Resistance-Exercise-Multi-Colour/dp/7245456313/ref=gbps_img_s-3_4168_959f8435?smid=A3P5ROKL5A1OLE&pf_rd_p=c4427c61-bcfc-4769-adc2-397824774168&pf_rd_s=slot-3&pf_rd_t=701&pf_rd_i=gb_main&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_r=SCR5B4E8ZSDPRGV65P3G", category: "sports", provider: "Black Mountain", location: "London", discount: "78%", photo:"https://images-na.ssl-images-amazon.com/images/I/71JzlVRZTTL._SL1200_.jpg")
deal14 = Deal.create(name: "Ski Suncream and Lipbalm Pack", description: "20 tube of suncream with integrated SPF 15 lipbalm in dome", original_price: 10, new_price: 7, url: "https://www.amazon.co.uk/Suncream-Lipbalm-Pack-lanyard-SPF30/dp/B001URWNDY/ref=sr_1_1?ie=UTF8&qid=1481195523&sr=8-1&keywords=skiing", category: "sports", provider: "Manbi", location: "London", discount: "25%", photo:"https://images-na.ssl-images-amazon.com/images/I/81vtDeOomDL._SL1500_.jpg")
deal15 = Deal.create(name: "Functional Thermal Underwear", description: "Designed using double-seamless technology with top quality thermal properties", original_price: 79, new_price: 23, url: "https://www.amazon.co.uk/THERMOTECH-Functional-Thermal-Underwear-Breathable/dp/B01769P6NS/ref=sr_1_7?ie=UTF8&qid=1481197179&sr=8-7&keywords=skiing", category: "sports", provider: "Norde", location: "London", discount: "Save 72%", photo:"https://images-na.ssl-images-amazon.com/images/I/51eenlyuT0L.jpg")

# create a list of users
user1 = User.create!(email: "user1@gmail.com", password: "password", first_name: "Adam", last_name: "User1", location: "Barcelona")
user2 = User.create!(email: "user2@yahoo.com", password: "password", first_name: "Mathilda", last_name: "User2", location: "Barcelona")

# create a list of traits
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
tag14 = Tag.create(name: "automotive")

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

#connect users and characterstics
UserTrait.create(user: user1, trait: trait2)
UserTrait.create(user: user1, trait: trait7)
UserTrait.create(user: user1, trait: trait11)
UserTrait.create(user: user2, trait: trait3)
UserTrait.create(user: user2, trait: trait5)
UserTrait.create(user: user2, trait: trait8)

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
DealTag.create(deal: deal10, tag: tag6)
DealTag.create(deal: deal10, tag: tag7)
DealTag.create(deal: deal11, tag: tag1)
DealTag.create(deal: deal11, tag: tag5)
DealTag.create(deal: deal11, tag: tag8)
DealTag.create(deal: deal11, tag: tag12)
DealTag.create(deal: deal12, tag: tag1)
DealTag.create(deal: deal12, tag: tag5)
DealTag.create(deal: deal12, tag: tag6)
DealTag.create(deal: deal12, tag: tag9)
DealTag.create(deal: deal12, tag: tag9)
DealTag.create(deal: deal13, tag: tag5)
DealTag.create(deal: deal13, tag: tag7)
DealTag.create(deal: deal14, tag: tag8)
DealTag.create(deal: deal14, tag: tag1)
DealTag.create(deal: deal14, tag: tag6)
DealTag.create(deal: deal14, tag: tag9)
DealTag.create(deal: deal14, tag: tag12)
DealTag.create(deal: deal15, tag: tag1)
DealTag.create(deal: deal15, tag: tag5)
DealTag.create(deal: deal15, tag: tag8)
DealTag.create(deal: deal15, tag: tag11)

# Adding Photos to the Deals
