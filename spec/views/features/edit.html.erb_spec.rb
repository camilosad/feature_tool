require 'rails_helper'

RSpec.describe 'features/edit', type: :view do
  before(:each) do
    @feature = assign(:feature, Feature.create!(
                                  user: nil,
                                  name: 'MyString',
                                  description: 'MyString',
                                  stakeholder: 'MyString',
                                  documentation: ''
    ))
  end

  it 'renders the edit feature form' do
    render

    assert_select 'form[action=?][method=?]', feature_path(@feature), 'post' do
      assert_select 'input[name=?]', 'feature[user_id]'

      assert_select 'input[name=?]', 'feature[name]'

      assert_select 'input[name=?]', 'feature[description]'

      assert_select 'input[name=?]', 'feature[stakeholder]'

      assert_select 'input[name=?]', 'feature[documentation]'
    end
  end
end
