class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by(event_name: params[:event_name])
    # class DerivePresentations < PresentationsController
    # WIP : presentations コントローラの action 呼び出し
    # @presentations = Presentation.find_by(Event_id: @event.id)
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

  def update

  end

  def delete
  end

  def destroy
    @event = Event.find_by(event_name: params[:event_name])
    @event.destroy
  end

  private
    def set_event
      @event = Event.find_by(id: params[:id])
    end

    def event_params
      params
        .require(:event)
        .permit(:event_name, :event_datetime)
    end
end
