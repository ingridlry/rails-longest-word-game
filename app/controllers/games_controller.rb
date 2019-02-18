class GamesController < ApplicationController
  def new
    @letters = (1..10).map { ('a'..'z').to_a.sample }
  end

  def score
    @word = params[:longestword]
    # @answer.save
    if @word == new.split
      @answer = "Sorry but TEST can't be built out of #{new}"
    elsif
      @answer = "Sorry but #{longestword} does not seem to be a valid English word..."
    else
      @answer = "Congratualtions! #{longestword} is a valid English word!"
    end
  end
end


    # @answer = Game.new(longestword: params[:longestword])
