class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.select('id')
  end

  def create
    @event = Event.new
  end
end
