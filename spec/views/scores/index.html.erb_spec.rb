require 'rails_helper'

RSpec.describe 'scores/index', type: :view do
  before(:each) do
    assign(:scores, [
             Score.create!(
               measure: nil,
               feature: nil,
               user: nil,
               value: 2
             ),
             Score.create!(
               measure: nil,
               feature: nil,
               user: nil,
               value: 2
             )
           ])
  end

  it 'renders a list of scores' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
  end
end
