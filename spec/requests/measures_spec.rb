require 'rails_helper'

RSpec.describe 'Measures', type: :request do
  include Devise::Test::IntegrationHelpers

  before(:each) do
    user = FactoryGirl.create(:user)
    sign_in(user)
  end
  describe 'GET /measures' do
    it 'works! (now write some real specs)' do
      get measures_path
      expect(response).to have_http_status(200)
    end
  end
end
