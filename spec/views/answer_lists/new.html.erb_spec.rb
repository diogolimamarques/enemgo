require 'rails_helper'

RSpec.describe "answer_lists/new", type: :view do
  before(:each) do
    assign(:answer_list, AnswerList.new(
      :question => nil,
      :alternative => nil,
      :simulation_answer => nil
    ))
  end

  it "renders new answer_list form" do
    render

    assert_select "form[action=?][method=?]", answer_lists_path, "post" do

      assert_select "input[name=?]", "answer_list[question_id]"

      assert_select "input[name=?]", "answer_list[alternative_id]"

      assert_select "input[name=?]", "answer_list[simulation_answer_id]"
    end
  end
end
