class College < ActiveRecord::Base

	has_many :college_departments
	has_many :departments, through: :college_departments
	accepts_nested_attributes_for :college_departments, allow_destroy: true

end