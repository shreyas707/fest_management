class Fest < ActiveRecord::Base

	belongs_to :department
	has_many :events

	validates_presence_of :name, :description, :department_id

end