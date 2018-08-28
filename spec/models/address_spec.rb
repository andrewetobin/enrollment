require 'rails_helper'

describe Address do
  describe 'validations' do
    it {should validate_presence_of(:description)}
    it {should validate_presence_of(:street)}
    it {should validate_presence_of(:city)}
    it {should validate_presence_of(:state)}
    it {should validate_presence_of(:zip)}
    it {should validate_presence_of(:student_id)}
  end
  describe 'relationships' do
    it "belongs to a student" do
      address = Address.create(description: "mother's", street: "7315 Nugget Ct", city: "Madison", state: "Illinois", zip: 83413)
      expect(address).to respond_to(:student)
    end
  end
end
