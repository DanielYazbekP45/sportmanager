class TeamsController < ApplicationController
    def create
      @sport = Sport.find(params[:sport_id])
      @team = @sport.teams.new(team_params)
      if @team.save
        redirect_to sport_path(@sport)
      else
        render :new
      end
    end

    def show
      @sport = Sport.find(params[:sport_id])
      @team = Team.find(params[:id])
    end

    def new
      @team = Team.find(params[:team_id])
      @player = @team.players.build
    end

    private
    def team_params
      params.require(:team).permit(:name, :sport_id)
    end
  end

