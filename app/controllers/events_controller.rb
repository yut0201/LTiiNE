class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :delete]

  def index
    @events = Event.all
  end

  def show
    user = User.find_by(id: session[:id])
    @user_name = user.display_name
    @event = Event.find_by(event_name: params[:event_name])
    @presentations = Presentation.where(Event_id: @event.id)
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

  def update
    @event = Event.find_by(event_name: params[:event_name])
    if @event.update_attributes(event_params)
      flash[:success] = 'successfully update Event information.'
      # params[:session][:display_name] = @user[:display_name]
      redirect_to event_path(event_name: @event[:event_name])
    else
      flash.now[:danger] = 'FAILED! Please check parameters.'
      render 'edit'
    end
  end

  def delete
  end

  def destroy
    @event = Event.find_by(event_name: params[:event_name])
    @event.destroy
  end

  private
    def set_event
      @event = Event.find_by(event_name: params[:event_name])
    end

    def event_params
      params
        .require(:event)
        .permit(:event_name, :event_datetime)
    end
end
