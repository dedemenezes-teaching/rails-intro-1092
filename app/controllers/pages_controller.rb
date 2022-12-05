class PagesController < ApplicationController

  # Action is just a method
  # Different name because we don't call this methods
  # ROUTE Will execute them when receive the request
  def about
    @partners = ['FIFA', 'UEFA']
  end

  def home

    @players = ['messi', 'mbappe', 'benzema', 'vini jr.']

    # raise #=> STOPS COLD EXECUTION (DEBUGGER)
    # params[:player] gives back what the user typed in the input
    if params[:player]
      @players = @players.select { |player| player == params[:player] }
    end
  end

  def contact
    @player_name = params[:player]
  end
end
