require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user){User.new(name: "Salomon", email: "salomon@hey.com", password: 123456)}

  context 'validation tests' do
    it 'needs -name- presence' do
      user.name = nil
      expect(user).to_not be_valid
    end

    it 'needs -email- presence' do
      user.email = nil
      expect(user).to_not be_valid
    end

    it 'needs -password- presence' do
      user.password = nil
      expect(user).to_not be_valid
    end

    it "user is valid with needed attributes" do
      expect(user).to be_valid
    end
  end

end
