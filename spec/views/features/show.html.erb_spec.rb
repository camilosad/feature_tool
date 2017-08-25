require 'rails_helper'

RSpec.describe 'features/show', type: :view do
  before(:each) do
    @feature = assign(:feature, Feature.create!(
                                  user: nil,
                                  name: 'Name',
                                  description: 'Description',
                                  stakeholder: 'Stakeholder',
                                  documentation: ''
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Stakeholder/)
    expect(rendered).to match(//)
  end
end
