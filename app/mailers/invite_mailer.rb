class InviteMailer < ApplicationMailer

	def send_invite(college_department, title)
		@college_department = college_department
		@title = title
		mail(to: college_department.email, subject: @title)
	end

end