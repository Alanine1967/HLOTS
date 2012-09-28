class EpisodesController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :get_season
  
  def index
    respond_with(@episodes = Episode.all)
  end
  
  def show
    respond_with(@episode = Episode.find(params[:id]))
  end

  def new
    respond_with(@episode = @season.episodes.build)
  end

  def create
    @episode = @season.episodes.create(params[:episode])
    if @episode.save
      redirect_to season_episodes_path, 
      notice: 'Episode was successfully created.'
    else
      redirect_to :back
    end
  end

  def new_individual
    @episode = Episode.find(params[:id])
    @individual = Individual.new
    @participation = Participation.create({episode_id: @episode.id})
  end
  
  def create_individual
    @individual = Individual.create(params[:individual])
    if @individual.save
      @participation[:individual_id] = @individual.id
      redirect_to edit_season_episode(@season, @episode)
    else
      redirect_to :back
    end
  end
  
  def edit
    @episode = Episode.find(params[:id])
  end

  def update
    @episode = Episode.find(params[:id])
    if @episode.update_attributes(params[:episode])
      redirect_to season_episodes_path
    else
      redirect_to :back
    end
  end

  def destroy
    @episode = Episode.find(params[:id])
    @episode.destroy
    redirect_to season_episodes_path(@season)
  end
  
  private
  
    def get_season
      @season = Season.find(params[:season_id])
    end
end
