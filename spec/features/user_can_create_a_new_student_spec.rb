require 'rails_helper'

describe 'user can create a student' do
  it "can create a new student" do
    new_name = "Tonoccus"
    visit new_student_path

    fill_in "student[name]", with: new_name
    click_on "Create Student"

    expect(page).to have_content(new_name)
  end
end
