class Department < ActiveRecord::Base

	has_many :college_departments
	has_many :colleges, through: :college_departments

	has_many :fests

end