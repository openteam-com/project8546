class EventsController < ApplicationController
  include EventsHelper

  def index
    @related_items = related(Event.find(event_id))
  end
end
