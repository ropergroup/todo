require 'rails_helper'

RSpec.describe User, type: :model do
   #let(:user) { FactoryGirl.create :user }

   it {should have_many (:lists)}
   #it { is_expected.to validate_presence_of(:name)}
   #it { is_expected.to validate_presence_of(:email) }
   #it { is_expected.to validate_uniqueness_of(:email) }
   #it { is_expected.to allow_value("user@test.com").for(:email) }

   #it { is_expected.to validate_presence_of(:password) }
   #it { is_expected.to validate_length_of(:password).is_at_least(4) }

   #describe "attributes" do
     #it "should respond to email" do
       #expect(user).to respond_to(:email)
     #end
   #end
end
