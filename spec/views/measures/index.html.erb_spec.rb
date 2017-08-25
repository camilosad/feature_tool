require 'rails_helper'

RSpec.describe 'measures/index', type: :view do
  before(:each) do
    assign(:measures, [
             Measure.create!(
               section: '',
               name: 'Name',
               hint: 'Hint',
               start_hint: 'Start Hint',
               end_hint: 'End Hint',
               required: false,
               allocation_percent: 2
             ),
             Measure.create!(
               section: '',
               name: 'Name',
               hint: 'Hint',
               start_hint: 'Start Hint',
               end_hint: 'End Hint',
               required: false,
               allocation_percent: 2
             )
           ])
  end

  it 'renders a list of measures' do
    render
    assert_select 'tr>td', text: ''.to_s, count: 2
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Hint'.to_s, count: 2
    assert_select 'tr>td', text: 'Start Hint'.to_s, count: 2
    assert_select 'tr>td', text: 'End Hint'.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
  end
end
