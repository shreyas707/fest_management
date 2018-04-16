class CollegeDepartment < ActiveRecord::Base

	belongs_to :college
	belongs_to :department

	has_many :college_department_invites
	has_many :invites, through: :college_department_invites

end