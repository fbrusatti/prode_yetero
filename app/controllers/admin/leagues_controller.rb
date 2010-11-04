class Admin::LeaguesController < Admin::BaseController
  respond_to :html, :js

  def edit
    @league = League.find(params[:id])
    @league.update_attribute(:step, params[:step]) if params[:step]
    respond_with @league
  end

  def index
    @leagues = League.all
    respond_with @leagues
  end

  def new
    @league = League.new
    respond_with @league
  end

  def create
    @league = League.new(params[:league])

    if @league.save
      redirect_to edit_admin_league_path(@league), :notice => "Successfully created league."
    else
      render :action => 'new'
    end
  end

  def destroy
    @league = League.find(params[:id])
    @league.destroy
    flash[:notice] = "Successfully destroyed league."
    redirect_to admin_leagues_path, :notice => "Successfully deleted league."
  end
end
