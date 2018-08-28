require 'rails_helper'

describe "user can see students addresses" do
  it "will show all student addresses" do
    student = Student.create(name: "LeRoi")
    new_description = "Mom's house"
    new_street = "7315 Nugget Ct"
    new_city = "Chicago"
    new_state = "Hawaii"
    new_zip = 91343
    visit new_student_address_path(student)

    fill_in "address[description]", with: new_description
    fill_in "address[street]", with: new_street
    fill_in "address[city]", with: new_city
    fill_in "address[state]", with: new_state
    fill_in "address[zip]", with: new_zip
    click_on "Create Address"

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content(new_description)
    expect(page).to have_content(new_state)
    expect(page).to have_content(new_city)
    expect(page).to have_content(new_street)
    expect(page).to have_content(new_zip)
  end
end
