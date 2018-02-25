class CreateFests < ActiveRecord::Migration
  def change
    create_table :fests do |t|
      t.string :name
      t.text :description
      t.integer :department_id

      t.timestamps null: false
    end
  end
end
