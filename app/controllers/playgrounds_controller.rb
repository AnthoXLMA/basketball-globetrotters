class PlaygroundsController < ApplicationController
  def index
    @playgrounds = Playground.all
  end

  def create
    @playground = Playground.new
  end

  def show
    @playground = Playground.select('id')
  end
end
