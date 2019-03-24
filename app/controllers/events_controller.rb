class EventsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    if @event.save
      redirect_to action: :index
    else
      render 'new'
    end
  end

  def edit
  end

  def delete
  end

  
end
