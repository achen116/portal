User.create!(first_name: "Tom", last_name: "Tom", username: "tom123", email: "tom@gmail.com", encrypted_pw: "tomtom")
User.create!(first_name: "Tim", last_name: "Tim", username: "tim123", email: "tim@gmail.com", encrypted_pw: "timtim")
User.create!(first_name: "Joe", last_name: "Joe", username: "joe123", email: "joe@gmail.com", encrypted_pw: "joejoe")
User.create!(first_name: "Mary", last_name: "Mary", username: "mary123", email: "mary@gmail.com", encrypted_pw: "marymary")
User.create!(first_name: "Lisa", last_name: "Lisa", username: "lisa123", email: "lisa@gmail.com", encrypted_pw: "lisalisa")

Category.create!(name: "Baby Care Essentials")
Category.create!(name: "Baby Carriers")
Category.create!(name: "Bathtime")
Category.create!(name: "Bedding & Nursery")
Category.create!(name: "Books, Music, & DVDs")
Category.create!(name: "Car Seats")
Category.create!(name: "Clothing")
Category.create!(name: "Cribs")
Category.create!(name: "Diaper Bags")
Category.create!(name: "Furniture")
Category.create!(name: "Health & Safety")
Category.create!(name: "Miscellaneous")
Category.create!(name: "Play Yards")
Category.create!(name: "Strollers & Travel Systems")
Category.create!(name: "Toys")

Product.create!(title: "Babyproof Drawer Locks", description: "Great condition! Message for details.", price: 5.95, user_id: 1, category_id: 1)
Product.create!(title: "Changing Pad", description: "Like new condition! Serious inquiries only.", price: 10.95, user_id: 2, category_id: 1)
Product.create!(title: "Elephant Humidifier", description: "Brand new! No longer sold in stores.", price: 15.95, user_id: 3, category_id: 1)
Product.create!(title: "Boppy Pillow", description: "Used once. Available for pick-up only.", price: 20.95, user_id: 4, category_id: 1)
Product.create!(title: "Baby Floor Seat", description: "Good condition! Open to trading/exchanging.", price: 25.95, user_id: 5, category_id: 1)

Product.create!(title: "0-3 Month Baby Carrier", description: "Good condition! Open to trading/exchanging.", price: 5.99, user_id: 1, category_id: 2)
Product.create!(title: "Newborn Baby Carrier", description: "Great condition! Message for details.", price: 10.99, user_id: 2, category_id: 2)
Product.create!(title: "3-6 Month Baby Carrier", description: "Like new condition! Serious inquiries only.", price: 15.99, user_id: 3, category_id: 2)
Product.create!(title: "Front/Hip Baby Carrier", description: "Brand new! No longer sold in stores.", price: 20.99, user_id: 4, category_id: 2)
Product.create!(title: "Baby Cloth Wrap Carrier", description: "Used once. Available for pick-up only.", price: 25.99, user_id: 5, category_id: 2)

Product.create!(title: "Newborn Bathtub", description: "Good condition! Open to trading/exchanging.", price: 5.95, user_id: 1, category_id: 3)
Product.create!(title: "3-6 Month Bathtub", description: "Great condition! Message for details.", price: 10.95, user_id: 2, category_id: 3)
Product.create!(title: "Butterfly Bath Wash Set", description: "Like new condition! Serious inquiries only.", price: 15.95, user_id: 3, category_id: 3)
Product.create!(title: "Toddler Play Tub", description: "Brand new! No longer sold in stores.", price: 20.95, user_id: 4, category_id: 3)
Product.create!(title: "Bathtime Towels", description: "Used once. Available for pick-up only.", price: 25.95, user_id: 5, category_id: 3)

Product.create!(title: "Plush Pillows", description: "Used once. Available for pick-up only.", price: 5.99, user_id: 1, category_id: 4)
Product.create!(title: "Crib Bumper Cushion", description: "Good condition! Open to trading/exchanging.", price: 10.99, user_id: 2, category_id: 4)
Product.create!(title: "Mattress Pad", description: "Great condition! Message for details.", price: 15.99, user_id: 3, category_id: 4)
Product.create!(title: "Bedsheet & Skirt", description: "Like new condition! Serious inquiries only.", price: 20.99, user_id: 4, category_id: 4)
Product.create!(title: "Winnie The Pooh Mobile", description: "Brand new! No longer sold in stores.", price: 25.99, user_id: 5, category_id: 4)

Product.create!(title: "Little Einstein Book", description: "Brand new! No longer sold in stores.", price: 5.95, user_id: 1, category_id: 5)
Product.create!(title: "The Cat in The Hat", description: "Used once. Available for pick-up only.", price: 10.95, user_id: 2, category_id: 5)
Product.create!(title: "Dr. Seuss (Set of 5)", description: "Good condition! Open to trading/exchanging.", price: 15.95, user_id: 3, category_id: 5)
Product.create!(title: "Nursery Rhymes", description: "Great condition! Message for details.", price: 20.95, user_id: 4, category_id: 5)
Product.create!(title: "Little Einstein DVD Set", description: "Like new condition! Serious inquiries only.", price: 25.95, user_id: 5, category_id: 5)

Product.create!(title: "0-3 Month Car Seat", description: "Like new condition! Serious inquiries only.", price: 5.99, user_id: 1, category_id: 6)
Product.create!(title: "3-6 Month Car Seat", description: "Brand new! No longer sold in stores.", price: 10.99, user_id: 2, category_id: 6)
Product.create!(title: "Toddler Seat", description: "Used once. Available for pick-up only.", price: 15.99, user_id: 3, category_id: 6)
Product.create!(title: "Booster Chair", description: "Good condition! Open to trading/exchanging.", price: 20.99, user_id: 4, category_id: 6)
Product.create!(title: "Newborn Car Seat", description: "Great condition! Message for details.", price: 25.99, user_id: 5, category_id: 6)

Product.create!(title: "Newborn Onesies", description: "Great condition! Message for details.", price: 5.95, user_id: 1, category_id: 7)
Product.create!(title: "Baby Girl Dresses", description: "Like new condition! Serious inquiries only.", price: 10.95, user_id: 2, category_id: 7)
Product.create!(title: "Baby Boy Clothes", description: "Brand new! No longer sold in stores.", price: 15.95, user_id: 3, category_id: 7)
Product.create!(title: "Blankets", description: "Used once. Available for pick-up only.", price: 20.95, user_id: 4, category_id: 7)
Product.create!(title: "6 Month Onesies", description: "Good condition! Open to trading/exchanging.", price: 25.95, user_id: 5, category_id: 7)

Product.create!(title: "Bassinet", description: "Good condition! Open to trading/exchanging.", price: 5.99, user_id: 1, category_id: 8)
Product.create!(title: "Rocking Bassinet", description: "Great condition! Message for details.", price: 10.99, user_id: 2, category_id: 8)
Product.create!(title: "White Crib", description: "Like new condition! Serious inquiries only.", price: 15.99, user_id: 3, category_id: 8)
Product.create!(title: "Cherry Wood Crib", description: "Brand new! No longer sold in stores.", price: 20.99, user_id: 4, category_id: 8)
Product.create!(title: "Convertible Crib", description: "Used once. Available for pick-up only.", price: 25.99, user_id: 5, category_id: 8)

Product.create!(title: "Diaper Bag Carrying Strap", description: "Used once. Available for pick-up only.", price: 5.99, user_id: 1, category_id: 9)
Product.create!(title: "Compact Diaper Bag", description: "Good condition! Open to trading/exchanging.", price: 10.99, user_id: 2, category_id: 9)
Product.create!(title: "Medium Diaper Bag", description: "Great condition! Message for details.", price: 15.99, user_id: 3, category_id: 9)
Product.create!(title: "Backpack Diaper Bag", description: "Like new condition! Serious inquiries only.", price: 20.99, user_id: 4, category_id: 9)
Product.create!(title: "Foldable Diaper Bag", description: "Brand new! No longer sold in stores.", price: 25.99, user_id: 5, category_id: 9)

Product.create!(title: "Plastic Dining Table", description: "Brand new! No longer sold in stores.", price: 5.95, user_id: 1, category_id: 10)
Product.create!(title: "Crib", description: "Used once. Available for pick-up only.", price: 10.95, user_id: 2, category_id: 10)
Product.create!(title: "Changing Table", description: "Good condition! Open to trade.", price: 15.95, user_id: 3, category_id: 10)
Product.create!(title: "High Chair", description: "Great condition! Message for details.", price: 20.95, user_id: 4, category_id: 10)
Product.create!(title: "Rocking Chair", description: "Like new condition! Serious inquiries only.", price: 25.95, user_id: 5, category_id: 10)

Product.create!(title: "Safety Edge Guards", description: "Like new condition! Serious inquiries only.", price: 5.99, user_id: 1, category_id: 11)
Product.create!(title: "Cleaning Accessories", description: "Brand new! No longer sold in stores.", price: 10.99, user_id: 2, category_id: 11)
Product.create!(title: "Door Locks", description: "Used once. Available for pick-up only.", price: 15.99, user_id: 3, category_id: 11)
Product.create!(title: "Safety Gate", description: "Good condition! Open to trade.", price: 20.99, user_id: 4, category_id: 11)
Product.create!(title: "Extendable Gate", description: "Great condition! Message for details.", price: 25.99, user_id: 5, category_id: 11)

Product.create!(title: "Bottles", description: "Great condition! Message for details.", price: 5.99, user_id: 1, category_id: 12)
Product.create!(title: "Infant Books and CDs", description: "Like new condition! Serious inquiries only.", price: 10.99, user_id: 2, category_id: 12)
Product.create!(title: "Baby Blankets", description: "Brand new! No longer sold in stores.", price: 15.99, user_id: 3, category_id: 12)
Product.create!(title: "Baby Bibs", description: "Used once. Available for pick-up only.", price: 20.99, user_id: 4, category_id: 12)
Product.create!(title: "Swimming Pool", description: "Good condition! Open to trade.", price: 25.99, user_id: 5, category_id: 12)

Product.create!(title: "Mini Play Slide", description: "Good condition! Open to trade.", price: 5.95, user_id: 1, category_id: 13)
Product.create!(title: "Play Kitchen", description: "Great condition! Message for details.", price: 10.95, user_id: 2, category_id: 13)
Product.create!(title: "Plastic Swimming Pool", description: "Like new condition! Serious inquiries only.", price: 15.95, user_id: 3, category_id: 13)
Product.create!(title: "Outdoor Swing Set", description: "Brand new! No longer sold in stores.", price: 20.95, user_id: 4, category_id: 13)
Product.create!(title: "Mini Jungle Gym", description: "Used once. Available for pick-up only.", price: 25.95, user_id: 5, category_id: 13)

Product.create!(title: "Kid's Play Stroller", description: "Used once. Available for pick-up only.", price: 5.99, user_id: 1, category_id: 14)
Product.create!(title: "Single Seat Stroller", description: "Good condition! Open to trade.", price: 10.99, user_id: 2, category_id: 14)
Product.create!(title: "Newborn Stroller", description: "Great condition! Message for details.", price: 15.99, user_id: 3, category_id: 14)
Product.create!(title: "Toddler Stroller", description: "Like new condition! Serious inquiries only.", price: 20.99, user_id: 4, category_id: 14)
Product.create!(title: "Double Decker Stroller", description: "Brand new! No longer sold in stores.", price: 25.99, user_id: 5, category_id: 14)

Product.create!(title: "Mega Lego Set", description: "Brand new! No longer sold in stores.", price: 5.99, user_id: 1, category_id: 15)
Product.create!(title: "Beyblades", description: "Used once. Available for pick-up only.", price: 10.99, user_id: 2, category_id: 15)
Product.create!(title: "Stuffed Animals", description: "Good condition! Open to trade.", price: 15.99, user_id: 3, category_id: 15)
Product.create!(title: "Action Figures", description: "Great condition! Message for details.", price: 20.99, user_id: 4, category_id: 15)
Product.create!(title: "Board Games", description: "Like new condition! Serious inquiries only.", price: 25.99, user_id: 5, category_id: 15)