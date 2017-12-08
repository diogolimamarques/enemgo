require 'rails_helper'

RSpec.describe "answer_lists/edit", type: :view do
  before(:each) do
    @answer_list = assign(:answer_list, AnswerList.create!(
      :question => nil,
      :alternative => nil,
      :simulation_answer => nil
    ))
  end

  it "renders the edit answer_list form" do
    render

    assert_select "form[action=?][method=?]", answer_list_path(@answer_list), "post" do

      assert_select "input[name=?]", "answer_list[question_id]"

      assert_select "input[name=?]", "answer_list[alternative_id]"

      assert_select "input[name=?]", "answer_list[simulation_answer_id]"
    end
  end
end
