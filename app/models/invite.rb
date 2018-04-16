class Invite < ActiveRecord::Base

	has_many :college_department_invites
	has_many :college_departments, through: :college_department_invites

end
