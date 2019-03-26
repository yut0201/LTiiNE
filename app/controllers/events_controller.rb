class EventsController < ApplicationController
  def index
    @events = Event.all
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

  def event_params
    params
      .require(:event)
      .permit(:event_name, :event_datetime)
  end
end
