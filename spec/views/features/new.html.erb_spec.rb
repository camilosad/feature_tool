require 'rails_helper'

RSpec.describe 'features/new', type: :view do
  before(:each) do
    assign(:feature, Feature.new(
                       user: nil,
                       name: 'MyString',
                       description: 'MyString',
                       stakeholder: 'MyString',
                       documentation: ''
    ))
  end

  it 'renders new feature form' do
    render

    assert_select 'form[action=?][method=?]', features_path, 'post' do
      assert_select 'input[name=?]', 'feature[user_id]'

      assert_select 'input[name=?]', 'feature[name]'

      assert_select 'input[name=?]', 'feature[description]'

      assert_select 'input[name=?]', 'feature[stakeholder]'

      assert_select 'input[name=?]', 'feature[documentation]'
    end
  end
end
