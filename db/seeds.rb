# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Mountain.destroy_all
State.destroy_all

alabama = State.create(name: "Alabama", geography: "Southern state with rolling hills and small mountains", climate: "Hot, Humid, and mainily warm weather")
cali = State.create(name: "California", geography: "West coast state with beach, mountains, and multiple climates", climate: "depends on the region")
arizona = State.create(name: "Arizona", geography: "Southwest state with deserts and a few mountain regions", climate: "Hot and dry unless in mountain regions")

Mountain.create(name: "Cheaha Mountain", height: 2411, state: alabama)
Mountain.create(name: "Oak Mountain", height: 732, state: alabama)

Mountain.create(name: "Mount Shasta", height: 14180, state: cali)
Mountain.create(name: "Mammoth Mountain", height: 11053, state: cali)

Mountain.create(name: "Mount Graham", height: 10719, state: arizona)
Mountain.create(name: "Mount Baldy", height: 11421, state: arizona)
