require 'rails_helper'

RSpec.describe 'measures/edit', type: :view do
  before(:each) do
    @measure = assign(:measure, Measure.create!(
                                  section: '',
                                  name: 'MyString',
                                  hint: 'MyString',
                                  start_hint: 'MyString',
                                  end_hint: 'MyString',
                                  required: false,
                                  allocation_percent: 1
    ))
  end

  it 'renders the edit measure form' do
    render

    assert_select 'form[action=?][method=?]', measure_path(@measure), 'post' do
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
