require 'rails_helper'

RSpec.describe 'Features', type: :request do
  include Devise::Test::IntegrationHelpers

  before(:each) do
    user = FactoryGirl.create(:user)
    sign_in(user)
  end

  describe 'GET /features' do
    it 'works! (now write some real specs)' do
      get features_path
      expect(response).to have_http_status(200)
    end
  end
end
