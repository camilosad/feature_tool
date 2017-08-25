require 'rails_helper'

RSpec.describe 'scores/new', type: :view do
  before(:each) do
    assign(:score, Score.new(
                     measure: nil,
                     feature: nil,
                     user: nil,
                     value: 1
    ))
  end

  it 'renders new score form' do
    render

    assert_select 'form[action=?][method=?]', scores_path, 'post' do
      assert_select 'input[name=?]', 'score[measure_id]'

      assert_select 'input[name=?]', 'score[feature_id]'

      assert_select 'input[name=?]', 'score[user_id]'

      assert_select 'input[name=?]', 'score[value]'
    end
  end
end
