require 'rails_helper'

RSpec.describe Item, type: :model do
  #let(:user) { FactoryGirl.create :user }
  #let(:list) { FactoryGirl.create :list }

  it { is_expected.to belong_to(:user) }

  #describe "attributes" do
    #it "has name and exp attributes" do
      #expect(list).to have_attributes(list: list.list)
    #end
  #end
end
