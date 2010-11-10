class Admin::WeeksController < Admin::BaseController
  respond_to :html, :js

  before_filter :get_associations, :except => [:create]

  def create
    if params[:fixture_id]
      @fixture = Fixture.find(params[:fixture_id])
      @league = @fixture.league
      @week = Week.new(params[:week])

      @fixture.weeks << @week

      @saved = @week.save
    else
      Week.new(params[:week])
    end
  end

  def destroy
    @destroyed = @week.destroy
  end


  def edit 
  end
 
  def show 
  end


  def update
    @updated = @week.update_attributes(params[:week])
  end

private

  def get_associations
    @week = Week.find(params[:id])
    @fixture = @week.fixture
    @league = @fixture.league
  end
end
