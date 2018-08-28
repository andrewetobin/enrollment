require 'rails_helper'

describe 'user can see index page' do
  it "can see all students names" do
    student_1 = Student.create(name: "Phillip")
    student_2 = Student.create(name: "Bob")
    student_3 = Student.create(name: "Heather")
    student_4 = Student.create(name: "Trent")
    student_5 = Student.create(name: "Chris")
    student_6 = Student.create(name: "Sarah")
    student_7 = Student.create(name: "Emily")
    student_8 = Student.create(name: "Elyse")
    student_9 = Student.create(name: "Matthew")

    visit students_path

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
    expect(page).to have_content(student_3.name)
    expect(page).to have_content(student_4.name)
    expect(page).to have_content(student_5.name)
    expect(page).to have_content(student_6.name)
    expect(page).to have_content(student_7.name)
    expect(page).to have_content(student_8.name)
    expect(page).to have_content(student_9.name)
  end

end
