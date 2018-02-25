class CollegeDepartment < ActiveRecord::Base

	belongs_to :college
	belongs_to :department

end