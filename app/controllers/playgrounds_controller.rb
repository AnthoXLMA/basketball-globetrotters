class PlaygroundsController < ApplicationController
  def index
    @playgrounds = Playground.all

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @playgrounds.map do |playground|
       {
        lat: playground.latitude,
        lng: playground.longitude
      }
    end
  end

  def create
    @playground = Playground.new(playground_params)
    if @playground.save!
      redirect_to playground_path(@playground)
    else
      render :new
    end
  end

  def new
    @playground = Playground.new
  end

  def show
    @playground = Playground.find(params[:id])
    @event = Event.new
    @events = @playground.events
  end

  private

  def playground_params
    params.require(:playground).permit(:name, :location, :reputation, :status, :image)
  end
end
