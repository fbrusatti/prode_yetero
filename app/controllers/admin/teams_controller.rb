class Admin::TeamsController < Admin::BaseController
  respond_to :html, :js

  def index
    @league = League.find(params[:league_id])
    @teams = @league.teams
  end

  def create
    if params[:league_id]
      @league = League.find(params[:league_id])
      @league.teams << Team.new(params[:team])
      redirect_to edit_admin_league_path @league

    else
      Team.new(params[:team])
    end
  end
end
