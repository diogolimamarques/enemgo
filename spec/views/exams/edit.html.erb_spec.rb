require 'rails_helper'

RSpec.describe "exams/edit", type: :view do
  before(:each) do
    @exam = assign(:exam, Exam.create!(
      :year => 1,
      :kind => 1,
      :status => 1,
      :user => nil
    ))
  end

  it "renders the edit exam form" do
    render

    assert_select "form[action=?][method=?]", exam_path(@exam), "post" do

      assert_select "input[name=?]", "exam[year]"

      assert_select "input[name=?]", "exam[kind]"

      assert_select "input[name=?]", "exam[status]"

      assert_select "input[name=?]", "exam[user_id]"
    end
  end
end
