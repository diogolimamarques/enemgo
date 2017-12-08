require 'rails_helper'

RSpec.describe "answer_lists/index", type: :view do
  before(:each) do
    assign(:answer_lists, [
      AnswerList.create!(
        :question => nil,
        :alternative => nil,
        :simulation_answer => nil
      ),
      AnswerList.create!(
        :question => nil,
        :alternative => nil,
        :simulation_answer => nil
      )
    ])
  end

  it "renders a list of answer_lists" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
