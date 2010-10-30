class Admin::LeaguesController < Admin::BaseController

  def index
    @leagues = League.all
  end

end
