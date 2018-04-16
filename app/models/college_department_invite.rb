class CollegeDepartmentInvite < ActiveRecord::Base

	belongs_to :college_department
	belongs_to :invite

end
