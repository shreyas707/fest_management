class Event < ActiveRecord::Base

	belongs_to :fest
	has_many :event_registrations

	validates_presence_of :name, :description, :fest_id

	def full_event_name
		return self.fest.department.name + " - " + self.name
	end

end
