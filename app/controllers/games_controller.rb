class GamesController < ApplicationController

  def index
    @games = Game.all

    return render json: @games.map { |game| game_response(game) }, status: :ok
  end

  def show
    @game = Game.find(params[:id])

    return render json: game_response(@game), status: :ok
  end

  def create
    if params[:game][:name].blank?
      return render json: { error: "Name is required" }, status: :unprocessable_entity
    end

    if params[:game][:number_of_words].blank?
      return render json: { error: "Number of words is required" }, status: :unprocessable_entity
    end

    if params[:game][:seconds_per_round].blank?
      return render json: { error: "Seconds per round is required" }, status: :unprocessable_entity
    end

    @game = Game.new({
      name: params[:game][:name],
      number_of_words: params[:game][:number_of_words],
      seconds_per_round: params[:game][:seconds_per_round]
    })

    if @game.save
      return render json: game_response(@game), status: :created
    else
      return render json: { error: @game.errors.full_messages.join(", ") }, status: :unprocessable_entity
    end
  end



  private

  def game_response(game)
    {
      id: game.id,
      name: game.name,
      number_of_words: game.number_of_words,
      seconds_per_round: game.seconds_per_round
    }
  end

end
