class CreateCollegeDepartments < ActiveRecord::Migration
  def change
    create_table :college_departments do |t|
      t.string :email
      t.integer :college_id
      t.integer :department_id

      t.timestamps null: false
    end
  end
end
