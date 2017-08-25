require 'rails_helper'

RSpec.describe 'scores/edit', type: :view do
  before(:each) do
    @score = assign(:score, Score.create!(
                              measure: nil,
                              feature: nil,
                              user: nil,
                              value: 1
    ))
  end

  it 'renders the edit score form' do
    render

    assert_select 'form[action=?][method=?]', score_path(@score), 'post' do
      assert_select 'input[name=?]', 'score[measure_id]'

      assert_select 'input[name=?]', 'score[feature_id]'

      assert_select 'input[name=?]', 'score[user_id]'

      assert_select 'input[name=?]', 'score[value]'
    end
  end
end
