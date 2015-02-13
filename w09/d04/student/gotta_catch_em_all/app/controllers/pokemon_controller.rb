class PokemonController < ApplicationController
  def index
    @pokemon = Pokemon.all
  end

  def explore
    redirect_to '/random_poke_clash'
  end

  def random
url = ""
response = HTTparty.get(url)
@random = JSON.parse(response.body)

  end




end




When the user visits /random_poke_clash, they should be presented with the name, height, width, happiness_level, and image (via image_url) of a random pokemon, retrieved from the RESTful Pokemon API using HTTParty.
Note: You're going to have to hit the api twice: once for the basic information about the pokemon, and a second time to retrieve the URL that holds the sprite image of the Pokemon. Hmmmm... methinks you'll have to read the API docs and experiment.
Secondary Note: For random selection of pokemon, it might be helpful to know that the Pokemon API has 778 pokemon
