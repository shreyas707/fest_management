class CollegeDepartment < ActiveRecord::Base

	belongs_to :college
	belongs_to :department

	has_many :college_department_invites
	has_many :invites, through: :college_department_invites

	def college_name_with_department
		self.college.name + " - " + self.department.name
	end

end