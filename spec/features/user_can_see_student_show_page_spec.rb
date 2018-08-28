require 'rails_helper'

describe 'user sees name on show' do
  describe 'user visits show page' do
    it "shows student name" do
      student = Student.create(name: "Phillip")

      visit student_path(student)

      expect(page).to have_content(student.name)
    end
  end
end
