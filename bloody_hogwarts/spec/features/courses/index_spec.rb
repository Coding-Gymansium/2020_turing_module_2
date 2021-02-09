require "rails_helper"

RSpec.describe "Courses index page" do
  before :each do
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
  end

  describe "Courses index page displays list of courses and number of students enrolled per course" do
    it "Courses with students total display" do
      visit "/courses"
      
      within("#courses-#{@course_1.id}") do
        expect(page).to have_content(@course_1.name)
        expect(page).to have_content("#{@course_1.name}: #{@course_1.students.count}")
      end
    end
  end
end