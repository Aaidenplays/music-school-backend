# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(email: 'a@email.com', password: 'asd', password_confirmation: 'asd')

i1 = Instructor.create(user_id: u1.id)
s1 = Student.create(user_id: u1.id)



is1 = InstructorRequest.create(instructor_id: i1.id, student_id: s1.id, status: 'pending')


inst1 = Instrument.create()


ui = UserInstrument.create(instructor_id: i1.id, instrument_id: inst1.id)
us = UserInstrument.create(student_id: s1.id, instrument_id: inst1.id)

as = Assignment.create(student_id: s1.id, instructor_id: i1.id)
v1 = Video.create(student_id: s1.id)
v1 = Video.create(instructor_id: i1.id)


va = VideoAssignment.create(video_id: v1.id, assignment_id: as.id)

res = Resource.create(instructor_id: i1.id)
v1.update(resource_id: res.id)
mat = Material.create(resource_id: res.id)

ma = MaterialAssignment.create(material_id: mat.id, assignment_id: as.id)


