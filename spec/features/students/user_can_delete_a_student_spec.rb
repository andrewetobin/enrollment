require 'rails_helper'


describe 'user can delete a student'do
  it "can delete student" do
    student_1 = Student.create(name: "Phillip")

    visit students_path

    click_on "Delete"

    expect(page).to_not have_content(student_1.name)
  end
end
