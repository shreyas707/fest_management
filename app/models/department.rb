class Department < ActiveRecord::Base

	has_many :college_departments
	has_many :colleges, through: :college_departments

	has_many :fests

	validates_presence_of :name

end