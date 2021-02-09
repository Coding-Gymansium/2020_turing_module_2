require "rails_helper"

RSpec.describe "Student's Show Page" do 

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

  end

  describe "When I visit '/students/:id' I see a list of the students' courses." do
    it "Student courses display in student show page" do
      visit "/students/#{@student_1.id}"
      
      expect(page).to have_content("Course 1")
      expect(page).to have_content("Course 2")
      expect(page).to have_content("Course 3")
    end
  end

end