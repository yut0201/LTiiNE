class PresentationsController < ApplicationController
  def index
    @presentations = Presentation.all
  end

  def show
    user = User.find_by(id: session[:id])
    @user_name = user.display_name
    @presentation = Presentation.find(params[:id])
  end

  def new
    @event_name = params[:event_event_name]
    @presentation = Presentation.new
  end

  def create
    @presentation = Presentation.new
    @presentation.presentation_name = params[:presentation][:presentation_name]
    @presentation.description = params[:presentation][:description]
    @presentation.link_url = params[:presentation][:link_url]
    @event = Event.find_by(event_name: params[:event_event_name])
    @presentation.Event_id = @event[:id]
    user = User.find_by(id: session[:id])
    @presentation.display_name = user.display_name
    # WIP
    if @presentation.save
      redirect_to event_path(event_name: params[:event_event_name])
      # render events_path
    else
      render 'new'
    end
  end

  def edit
    @presentation_name = params[:presentation_name]
  end

  def delete
  end

  def destroy
    @presentation = Presentation.find(params[:id])
    event = Event.find_by(id: @presentation.Event_id)
    if @presentation.destroy
      redirect_to event_path(event.event_name)
    else
      render 'edit'
    end
  end

  private

    def presentation_params
      params.require(:presentation)
        .permit(:presentation_name, :description)
    end
end
