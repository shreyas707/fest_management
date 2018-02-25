class AddEmailToCollege < ActiveRecord::Migration
  def change
  	add_column :colleges, :email, :string
  end
end
