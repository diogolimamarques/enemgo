require 'rails_helper'

RSpec.describe "exam_questions/new", type: :view do
  before(:each) do
    assign(:exam_question, ExamQuestion.new(
      :exam => "",
      :question => nil
    ))
  end

  it "renders new exam_question form" do
    render

    assert_select "form[action=?][method=?]", exam_questions_path, "post" do

      assert_select "input[name=?]", "exam_question[exam]"

      assert_select "input[name=?]", "exam_question[question_id]"
    end
  end
end
