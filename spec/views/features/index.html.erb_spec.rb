require 'rails_helper'

RSpec.describe 'features/index', type: :view do
  before(:each) do
    assign(:features, [
             Feature.create!(
               user: nil,
               name: 'Name',
               description: 'Description',
               stakeholder: 'Stakeholder',
               documentation: ''
             ),
             Feature.create!(
               user: nil,
               name: 'Name',
               description: 'Description',
               stakeholder: 'Stakeholder',
               documentation: ''
             )
           ])
  end

  it 'renders a list of features' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Description'.to_s, count: 2
    assert_select 'tr>td', text: 'Stakeholder'.to_s, count: 2
    assert_select 'tr>td', text: ''.to_s, count: 2
  end
end
