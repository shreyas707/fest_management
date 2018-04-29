class EventRegistrationMailer < ApplicationMailer

	def send_invite(event_registration)
		@event = event_registration
		@event_name = event_registration.event.name
		@email = event_registration.email
		mail(to: @email, subject: "Thank you for registering to " + @event_name)
	end

end