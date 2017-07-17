class DecksController < ApplicationController

  def index
    @decks = Deck.all
  end

  def new

  end

  def create

  end

  def show
    @user = User.find_by_id(params[:id])
  end

end
