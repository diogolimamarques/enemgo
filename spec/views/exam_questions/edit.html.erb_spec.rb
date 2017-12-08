require 'rails_helper'

RSpec.describe "exam_questions/edit", type: :view do
  before(:each) do
    @exam_question = assign(:exam_question, ExamQuestion.create!(
      :exam => "",
      :question => nil
    ))
  end

  it "renders the edit exam_question form" do
    render

    assert_select "form[action=?][method=?]", exam_question_path(@exam_question), "post" do

      assert_select "input[name=?]", "exam_question[exam]"

      assert_select "input[name=?]", "exam_question[question_id]"
    end
  end
end
