require 'rails_helper'

RSpec.describe "exam_questions/index", type: :view do
  before(:each) do
    assign(:exam_questions, [
      ExamQuestion.create!(
        :exam => "",
        :question => nil
      ),
      ExamQuestion.create!(
        :exam => "",
        :question => nil
      )
    ])
  end

  it "renders a list of exam_questions" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
