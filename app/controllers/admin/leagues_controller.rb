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
    @league = League.new(:step => 'new')
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
    redirect_to admin_leagues_path, :notice => "Successfully destroyed league."
  end

  def update
    @league = League.find(params[:id])
    if @league.update_attributes(params[:league])
      redirect_to edit_admin_league_path(@league), :notice => "Succesfully updated league."
    else
      render :action => 'edit'
    end
  end
end
