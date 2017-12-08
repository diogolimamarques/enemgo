require 'rails_helper'

RSpec.describe "exams/new", type: :view do
  before(:each) do
    assign(:exam, Exam.new(
      :year => 1,
      :kind => 1,
      :status => 1,
      :user => nil
    ))
  end

  it "renders new exam form" do
    render

    assert_select "form[action=?][method=?]", exams_path, "post" do

      assert_select "input[name=?]", "exam[year]"

      assert_select "input[name=?]", "exam[kind]"

      assert_select "input[name=?]", "exam[status]"

      assert_select "input[name=?]", "exam[user_id]"
    end
  end
end
