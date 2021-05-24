class PlayersController < ApplicationController
  def create
    @team = Team.find(params[:team_id])
    @player = @team.players.new(player_params)
    if @player.save
      redirect_to sport_team_path(@team)
    else
      render :new
    end
  end

  def new
    @team = Team.find(params[:team_id])
    @player = @team.players.build
  end

  private
  def player_params
    params.require(:player).permit(:name, :team_id)
  end
end


