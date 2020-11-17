class PokemonsController < ApplicationController
  before_action :set_pokemon, only: [:show, :edit, :update, :destroy]
  def index
    @pokemons = Pokemon.all
  end

  def show; end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.save

    redirect_to pokemon_path(@pokemon)
  end

  def edit; end

  def update
    @pokemon.update(pokemon_params)
    redirect_to pokemon_path(@pokemon)
  end

  def destroy
    @pokemon.destroy
    redirect_to pokemons_path
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :address, :species, :found_on)
  end

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end
end
