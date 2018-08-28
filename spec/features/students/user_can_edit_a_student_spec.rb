require 'rails_helper'

describe 'user can create a student' do
  it "can create a new student" do
    student = Student.create(name: "Fernando")
    new_name = "Tonoccus"
    visit edit_student_path(student)

    fill_in "student[name]", with: new_name
    click_on "Update Student"

    expect(page).to have_content(new_name)
  end
end
