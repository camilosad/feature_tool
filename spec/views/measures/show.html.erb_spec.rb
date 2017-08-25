require 'rails_helper'

RSpec.describe 'measures/show', type: :view do
  before(:each) do
    @measure = assign(:measure, Measure.create!(
                                  section: '',
                                  name: 'Name',
                                  hint: 'Hint',
                                  start_hint: 'Start Hint',
                                  end_hint: 'End Hint',
                                  required: false,
                                  allocation_percent: 2
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Hint/)
    expect(rendered).to match(/Start Hint/)
    expect(rendered).to match(/End Hint/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
  end
end
