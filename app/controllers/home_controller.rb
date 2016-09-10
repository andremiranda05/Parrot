class HomeController < ApplicationController

  before_action :set_event, only: [:show]

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:nome_evento, :data_evento, :descrição, :photo)

  end

  def index

    @events = Event.all
  end

  def
     show

  end
end
