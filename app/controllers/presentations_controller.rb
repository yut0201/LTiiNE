class PresentationsController < ApplicationController
  def new
    @presentation = Presentation.new
    @event_name = params[:event_name]
  end

  def create
    @presentation = Presentation.create(presentation_params)
    if @presentation.save
      redirect_to action: :index
    else
      render 'new'
    end
  end

  def show
  end

  def index
  end

  def delete
    @event_name = params[:event_name]
  end

  def edit
    @event_name = params[:event_name]
  end

  private

    def presentation_params
      params.require(:presentation).permit(:presentation_name, :description, :display_name)
    end
end
