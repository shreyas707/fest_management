class CreateCollegeDepartmentInvites < ActiveRecord::Migration
  def change
    create_table :college_department_invites do |t|
      t.integer :college_department_id
      t.integer :invite_id

      t.timestamps null: false
    end
  end
end
