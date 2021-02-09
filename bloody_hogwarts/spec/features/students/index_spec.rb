require 'rails_helper'

RSpec.describe "Students index page" do
  before :each do
    @student_1 = Student.create!(name: "Student 1", age: 10, house: "House A")
    @student_2 = Student.create!(name: "Student 2", age: 12, house: "House A")
    @student_3 = Student.create!(name: "Student 3", age: 11, house: "House B")
  end

  describe "Index page '/students' display students' list with  student's details" do
    it "display list of students with details" do
      visit "/students"

      expect(page).to have_content("Student 1")

      within("#student-#{@student_1.id}") do
        expect(page).to have_content("Student 1")
        expect(page).to have_content(10)
        expect(page).to have_content("House A")
      end
    end

    it "Students index page display average age of all students" do
      visit "/students"
  
      expect(page).to have_content("Average Age: 11")
    end
  end
end
