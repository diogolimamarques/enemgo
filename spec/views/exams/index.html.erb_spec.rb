require 'rails_helper'

RSpec.describe "exams/index", type: :view do
  before(:each) do
    assign(:exams, [
      Exam.create!(
        :year => 2,
        :kind => 3,
        :status => 4,
        :user => nil
      ),
      Exam.create!(
        :year => 2,
        :kind => 3,
        :status => 4,
        :user => nil
      )
    ])
  end

  it "renders a list of exams" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
