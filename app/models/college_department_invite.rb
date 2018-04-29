class CollegeDepartmentInvite < ActiveRecord::Base

	belongs_to :college_department
	belongs_to :invite

	validates_presence_of :college_department_id, :invite_id

end
