class Fest < ActiveRecord::Base

	belongs_to :department
	has_many :events

end