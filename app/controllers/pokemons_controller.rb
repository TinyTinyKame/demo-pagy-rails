class PokemonsController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @pokemons = pagy(
      Pokemon.all,
      items: 9,
      link_extra: "data-remote=\"true\""
    )

    respond_to do |format|
      format.html
      format.js
    end
  end
end
