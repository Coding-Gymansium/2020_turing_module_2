# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

StudentCourse.destroy_all
Course.destroy_all
Student.destroy_all


@student_1 = Student.create!(name: "Student 1", age: 10, house: "House A")
@student_2 = Student.create!(name: "Student 2", age: 10, house: "House A")
@student_3 = Student.create!(name: "Student 3", age: 10, house: "House B")

@course_1 = Course.create!(name: "Course 1")
@course_2 = Course.create!(name: "Course 2")
@course_3 = Course.create!(name: "Course 3")

StudentCourse.create!(student: @student_1, course: @course_1)
StudentCourse.create!(student: @student_1, course: @course_2)
StudentCourse.create!(student: @student_1, course: @course_3)

StudentCourse.create!(student: @student_2, course: @course_1)
StudentCourse.create!(student: @student_2, course: @course_2)
StudentCourse.create!(student: @student_2, course: @course_3)

StudentCourse.create!(student: @student_3, course: @course_1)
StudentCourse.create!(student: @student_3, course: @course_2)
