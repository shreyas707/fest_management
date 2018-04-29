class CreateEventRegistrations < ActiveRecord::Migration
  def change
    create_table :event_registrations do |t|
      t.string :name
      t.string :college
      t.string :department
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
