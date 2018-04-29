class EventRegistration < ActiveRecord::Base

	belongs_to :event

	validates_presence_of :name, :college, :department, :event_id, :email

end
