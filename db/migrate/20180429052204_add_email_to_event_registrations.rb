class AddEmailToEventRegistrations < ActiveRecord::Migration
  def change
  	add_column :event_registrations, :email, :string
  end
end
