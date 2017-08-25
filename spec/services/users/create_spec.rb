require 'rails_helper'

RSpec.describe Users::Create, type: :model do
  subject { Users::Create.new }
  let(:relation) { double }
  describe '#call' do
    it 'creats a user' do
      expect(User).to receive(:where).with(email: 'test@example.com') { relation }
      expect(relation).to receive(:first_or_create!).with(
        password: 'TRUST_NO_ONE', password_confirmation: 'TRUST_NO_ONE', name: 'Test Testerson'
      )
      subject.call(email: 'test@example.com', name: 'Test Testerson', password: 'TRUST_NO_ONE')
    end
  end
end
