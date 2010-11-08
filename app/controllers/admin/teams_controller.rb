class Admin::TeamsController < Admin::BaseController
  respond_to :html, :js

  def index
    @league = League.find(params[:league_id])
    @teams = @league.teams
  end

  def create
    if params[:league_id]
      @league = League.find(params[:league_id])
      @team = Team.new(params[:team])
      @team.leagues << @league

      if @team.save
        @save = true
      else
        @save = false
      end
    

    else
      Team.new(params[:team])
    end
  end
end
