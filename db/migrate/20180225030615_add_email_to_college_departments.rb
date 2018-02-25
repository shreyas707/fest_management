class AddEmailToCollegeDepartments < ActiveRecord::Migration
  def change
  	add_column :college_departments, :email, :string
  	remove_column :colleges, :email
  end
end