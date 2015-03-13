# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.delete_all
books = [
  { title: 'Son of ice and fire', icon_name: 'ice_fire.jpg'      , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
  { title: 'Clash of kings',      icon_name: 'clash_kings.jpg'   , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
  { title: 'Hunger games',        icon_name: 'hunger_games.jpg'  , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
  { title: 'Argo',                icon_name: 'argo.jpg'          , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
  { title: 'Blueberry',           icon_name: 'blueberry.jpg'     , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
  { title: 'Ghost machine',       icon_name: 'ghost_machine.jpg' , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
  { title: 'Storm of swards',     icon_name: 'storm_swards.jpg'  , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
  { title: 'Catching fire',       icon_name: 'catching_fire.jpg' , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
  { title: 'Sample book',         icon_name: nil                 , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' }
]

Book.create books

