require 'rails_helper'

RSpec.describe "exam_questions/show", type: :view do
  before(:each) do
    @exam_question = assign(:exam_question, ExamQuestion.create!(
      :exam => "",
      :question => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
