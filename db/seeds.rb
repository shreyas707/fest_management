# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

College.create(name: "RV", email: "rv@gmail.com")
College.create(name: "MSRIT", email: "msrit@gmail.com")
College.create(name: "BMS", email: "bms@gmail.com")
College.create(name: "JSS", email: "jss@gmail.com")
College.create(name: "SJBIT", email: "sjbit@gmail.com")
College.create(name: "GLOBAL", email: "global@gmail.com")
College.create(name: "KSIT", email: "ksit@gmail.com")
College.create(name: "AIT", email: "ait@gmail.com")

Department.create(name: "MCA")
Department.create(name: "MBA")
Department.create(name: "MTech")
Department.create(name: "CS")
Department.create(name: "IS")
Department.create(name: "Mechanical")
Department.create(name: "Civil")
Department.create(name: "EC")
Department.create(name: "EEE")

Fest.create(name: "MCA Fest" description: "This is MCA Department's fest.")
Fest.create(name: "MBA Fest" description: "This is MBA Department's fest.")
Fest.create(name: "MTech Fest" description: "This is MTech Department's fest.")
Fest.create(name: "CS Fest" description: "This is CS Department's fest.")
Fest.create(name: "IS Fest" description: "This is IS Department's fest.")
Fest.create(name: "Mechanical Fest" description: "This is Mechanical Department's fest.")
Fest.create(name: "Civil Fest" description: "This is Civil Department's fest.")
Fest.create(name: "EC Fest" description: "This is EC Department's fest.")
Fest.create(name: "EEE Fest" description: "This is EEE Department's fest.")

college_id = 1
8.times do
	department_id = 1
	9.times do
		CollegeDepartments.create(college_id: college_id, department_id: department_id, email:)
		department_id += 1
	end
	college_id += 1
end