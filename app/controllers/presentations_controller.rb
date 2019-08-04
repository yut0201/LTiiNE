class PresentationsController < ApplicationController
  def index
    @presentations = Presentation.all
  end

  def show
    @presentation = Presentation.find_by()
  end

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

  def edit
    @presentation_name = params[:presentation_name]
  end

  def delete
    @presentation_name = params[:presentation_name]
  end

  private

    def presentation_params
      params.require(:presentation).permit(:presentation_name, :description, :display_name)
    end
end
