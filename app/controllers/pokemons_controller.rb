class PokemonsController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @pokemons = pagy(
      Pokemon.all,
      items: 9
    )
  end
end
