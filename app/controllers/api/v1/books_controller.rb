class Api::V1::BooksController < ApplicationController

  def index
    render json: books.to_json
  end

  private

  def books
    [
      { 'id': 1, 'title': 'Son of ice and fire',  'icon_name': 'ice_fire.jpg'      , 'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
      { 'id': 2, 'title': 'Clash of kings',       'icon_name': 'clash_kings.jpg'   , 'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
      { 'id': 3, 'title': 'Hunger games',         'icon_name': 'hunger_games.jpg'  , 'description': 'slfkjsfjsfjsjfksjfk skfjsdkfjksdjfksdjfdsjfsdjfksdjf Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
      { 'id': 4, 'title': 'Argo',                 'icon_name': 'argo.jpg'          , 'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
      { 'id': 5, 'title': 'Blueberry',            'icon_name': 'blueberry.jpg'     , 'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
      { 'id': 6, 'title': 'Ghost machine',        'icon_name': 'ghost_machine.jpg' , 'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
      { 'id': 7, 'title': 'Storm of swards',      'icon_name': 'storm_swards.jpg'  , 'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
      { 'id': 8, 'title': 'Catching fire',        'icon_name': 'catching_fire.jpg' , 'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
      { 'id': 9, 'title': 'Sample book',         'icon_name': 'no_img.jpg'        , 'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' }
    ]
  end
end
