require 'rails_helper'

RSpec.describe Feature, type: :model do
  subject { FactoryGirl.build_stubbed :feature }
  let (:relation) { double }
  let(:scores) { [FactoryGirl.build(:score)] }

  describe "total_business_value" do
    it "total_business_value" do
      expect(subject).to receive(:scores).and_return(relation)
      expect(relation).to receive(:business_value).and_return(scores)
      expect(subject.total_business_value).to eq 1
    end
  end

  describe "total_effort" do
    it "total_effort" do
      expect(subject.total_effort).to eq 1
    end
  end
end
