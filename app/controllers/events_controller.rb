class EventsController < ApplicationController
  respond_to :html

  def index
    @events = Event.all
    respond_with @events
  end

  def new
    @event = Event.new
    respond_with @event
  end

  def create
    @event = Event.new(params[:event])
    @event.save!
    respond_with @event, :location => events_path
  end

end
