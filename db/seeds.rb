Product.create!([
  {name: "Captain America", description: "Color Red, White and Blue", price: "23.0", photo: "http://cdn.shopify.com/s/files/1/0030/3802/products/captain_america_shield_logo_royal_blue_grande.jpg?v=1313375823", user_id: nil},
  {name: "Spider-Man ", description: "tshirt color red black blue", price: "20.0", photo: "http://t-shirtguru.com/product-images/marvel-spider-man-web-t-shirt-hottopic-1.jpg", user_id: nil},
  {name: "Hulk ", description: "tshirt color green", price: "10.0", photo: "http://www.delsol.com/media/catalog/product/cache/1/image/700x700/9df78eab33525d08d6e5fb8d27136e95/h/u/hulk-gray-out.jpg", user_id: nil},
  {name: "Iron Man ", description: "tshirt color yellow red", price: "25.0", photo: "http://ecx.images-amazon.com/images/I/91GYJ%2Bpg4QL._SL1500_.jpg", user_id: nil},
  {name: "Green Lantern ", description: "tshirt color green", price: "15.0", photo: "http://ecx.images-amazon.com/images/I/61edlCigtIL._UL1001_.jpg", user_id: nil},
  {name: "Captain America ", description: "tshirt color blue red and white", price: "20.0", photo: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=40079653", user_id: nil},
  {name: "Captain Canuck ", description: " red and white", price: "20.0", photo: "http://www.bigbcomics.com/wp-content/uploads/2013/04/Captain_Canuck_Club_Member_tshirt_Charcoal.png", user_id: nil},
  {name: "Batman ", description: "black", price: "18.0", photo: "http://cdn.shopify.com/s/files/1/0384/0921/products/original-batman-t-shirt.main.jpeg?v=1405701206", user_id: nil},
  {name: "Superman", description: "Blue, Red and Yellow", price: "12.0", photo: "http://www.spirithalloween.com/images/spirit/products/interactivezoom/processed/01212547.interactive.a.jpg", user_id: nil},
  {name: "Captain Marvel Tshirt", description: "tshirt color red white yellow", price: "23.99", photo: nil, user_id: nil},
  {name: "Spider-Man Tshirt", description: "tshirt color red black blue", price: "20.99", photo: nil, user_id: nil},
  {name: "Hulk Tshirt", description: "tshirt color green", price: "10.99", photo: nil, user_id: nil},
  {name: "Iron Man Tshirt", description: "tshirt color yellow red", price: "25.99", photo: nil, user_id: nil},
  {name: "Green Lantern Tshirt", description: "tshirt color green", price: "15.99", photo: nil, user_id: nil},
  {name: "Captain America Tshirt", description: "tshirt color blue red and white", price: "20.99", photo: nil, user_id: nil},
  {name: "X-Mex tshirt", description: "tshirt color gray and red", price: "22.99", photo: nil, user_id: nil}
])
ProductOption.create!([
  {name: nil, product_id: nil},
  {name: "black", product_id: 14},
  {name: " yellow", product_id: 14},
  {name: " grey", product_id: 14}
])
# Vendor.create!([
# #   {name: "Captain Marvel Tshirt", vendor_id: 1}
# ])
