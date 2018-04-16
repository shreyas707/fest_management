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

college_id = 1
8.times do
	department_id = 1
	9.times do
		department_email = College.find(college_id).name.downcase + Department.find(department_id).name.downcase + "@gmail.com"
		CollegeDepartment.create(college_id: college_id, department_id: department_id, email: department_email)
		department_id += 1
	end
	college_id += 1
end

Fest.create(name: "MCA Fest", description: "This is MCA Department's fest.", department_id: Department.find_by(name: "MCA").id)
Fest.create(name: "MBA Fest", description: "This is MBA Department's fest.", department_id: Department.find_by(name: "MBA").id)
Fest.create(name: "MTech Fest", description: "This is MTech Department's fest.", department_id: Department.find_by(name: "MTech").id)
Fest.create(name: "CS Fest", description: "This is CS Department's fest.", department_id: Department.find_by(name: "CS").id)
Fest.create(name: "IS Fest", description: "This is IS Department's fest.", department_id: Department.find_by(name: "IS").id)
Fest.create(name: "Mechanical Fest", description: "This is Mechanical Department's fest.", department_id: Department.find_by(name: "Mechanical").id)
Fest.create(name: "Civil Fest", description: "This is Civil Department's fest.", department_id: Department.find_by(name: "Civil").id)
Fest.create(name: "EC Fest", description: "This is EC Department's fest.", department_id: Department.find_by(name: "EC").id)
Fest.create(name: "EEE Fest", description: "This is EEE Department's fest.", department_id: Department.find_by(name: "EEE").id)

fest_id = 1
9.times do
	event_no = 1
	3.times do
		Event.create(name: "Event " + event_no.to_s, description: "This is event " + event_no.to_s + " of " + Fest.find(fest_id).name + " department.", fest_id: fest_id)
		event_no += 1
	end
	fest_id += 1
end





