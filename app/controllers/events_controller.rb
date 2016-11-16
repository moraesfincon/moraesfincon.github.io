class EventsController < ApplicationController

	def index
		@events = Event.order(id: :desc)
	end
end
