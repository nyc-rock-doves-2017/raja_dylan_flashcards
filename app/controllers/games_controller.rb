class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    Game.new(params[:deck_id])
  end

end
