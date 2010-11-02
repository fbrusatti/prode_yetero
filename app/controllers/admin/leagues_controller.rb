class Admin::LeaguesController < Admin::BaseController

  def index
    @leagues = League.all
  end

  def new
    @league = League.new
  end

  def create
    @league = League.new(params[:league])

    if @league.save
      redirect_to admin_leagues_path, :notice => "Successfully created league."
    else
      render :action => 'new'
    end
  end

  def destroy
    
  end

end
