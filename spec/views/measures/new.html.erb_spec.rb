require 'rails_helper'

RSpec.describe 'measures/new', type: :view do
  before(:each) do
    assign(:measure, Measure.new(
                       section: '',
                       name: 'MyString',
                       hint: 'MyString',
                       start_hint: 'MyString',
                       end_hint: 'MyString',
                       required: false,
                       allocation_percent: 1
    ))
  end

  it 'renders new measure form' do
    render

    assert_select 'form[action=?][method=?]', measures_path, 'post' do
      assert_select 'input[name=?]', 'measure[section]'

      assert_select 'input[name=?]', 'measure[name]'

      assert_select 'input[name=?]', 'measure[hint]'

      assert_select 'input[name=?]', 'measure[start_hint]'

      assert_select 'input[name=?]', 'measure[end_hint]'

      assert_select 'input[name=?]', 'measure[required]'

      assert_select 'input[name=?]', 'measure[allocation_percent]'
    end
  end
end
