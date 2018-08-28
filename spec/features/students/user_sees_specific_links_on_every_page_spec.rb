require 'rails_helper'

describe 'user sees specific links on all pages' do
  it "shows link to see all student and create s student" do
    student_1 = Student.create(name: "Phillip")
    student_2 = Student.create(name: "Bob")
    student_3 = Student.create(name: "Heather")
    student_4 = Student.create(name: "Trent")
    visit students_path

    click_on "Create a Student"
    expect(current_path).to eq(new_student_path)
    expect(page).to have_content("Create Student")


    visit new_student_path
    click_on "All Students"
    expect(current_path).to eq(students_path)
    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
    expect(page).to have_content(student_3.name)
    expect(page).to have_content(student_4.name)

    visit student_path(student_1)
    click_on "Create a Student"
    expect(current_path).to eq(new_student_path)
    visit student_path(student_1)
    click_on "All Students"
    expect(current_path).to eq(students_path)

    visit edit_student_path(student_1)
    click_on "Create a Student"
    expect(current_path).to eq(new_student_path)
    click_on "All Students"
    expect(current_path).to eq(students_path)
  end
end
