class Admin::MatchesController < Admin::BaseController
  respond_to :html, :js

  def create
    @local = Team.find(params[:match][:local])
    @visitor = Team.find(params[:match][:visitor])

    @week = Week.find(params[:week_id])
    @fixture = @week.fixture
    @league = @fixture.league

    @match = Match.new(:local => @local, :visitor => @visitor, :week => @week)

    @saved = @match.save
  end

  def destroy
    @match = Match.find(params[:id])
    @destroyed = @match.destroy
  end

end

