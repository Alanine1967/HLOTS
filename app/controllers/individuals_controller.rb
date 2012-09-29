class IndividualsController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :get_episode

  def index
    @individuals = @episode.individuals
    cast?(@individuals)
  end
  
  def show
  end

  def new
    @individual = @episode.individuals.create(params[:individual])
    @participation = Participation.new
    @participation[:episode_id] = @episode.id
    @participation[:individual_id] = @individual.id
  end
  
  def create
    if @participation.save
      redirect_to episode_individuals_path, notice: "Individual created!"
    else
      render action: "new"
    end
  end
  
  def update
    @individual = Individual.find(params[:id])
    if @individual.update_attributes(params[:individual])
      redirect_to episode_individuals_path
    else
      redirect_to :back
    end
  end
  
  def edit
  end
  
  protected

    def cast?(individuals)
      @cast = []
      @crew = []
      individuals.each do |individual|
        if individual.cast
          @cast << individual
        else
          @crew << individual
        end
      end
      @cast.sort! { |a, b| a.surname.downcase <=> b.surname.downcase }
      @crew.sort! { |a, b| a.surname.downcase <=> b.surname.downcase }
    end
    
    def get_episode
      @episode = Episode.find(params[:episode_id])
    end
end
