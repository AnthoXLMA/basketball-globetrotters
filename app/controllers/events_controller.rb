class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

    def show
    @event = Event.find(params[:id])
    @playground = Playground.new
    @playgrounds = @event.playgrounds
  end

   def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:type, :location, :playground, :price, :reward)
  end
end
