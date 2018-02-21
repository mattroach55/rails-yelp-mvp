puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "123456",
    category:     "french"
  },
  {
    name:         "Chef Peking",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "5555555",
    category:     "chinese"
  },
  {
    name:         "Senor Saffi",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "11111111",
    category:     "italian"
  },
  {
    name:         "Matt",
    address:      "4 road Blainville London SW4 0af",
    phone_number: "88888888",
    category:     "belgian"
  },
  {
    name:         "Bills",
    address:      "rue avenue 71000 Paris",
    phone_number: "999999999",
    category:     "french"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

