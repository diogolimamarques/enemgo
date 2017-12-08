require 'rails_helper'

RSpec.describe "questions/new", type: :view do
  before(:each) do
    assign(:question, Question.new(
      :statement => "MyText",
      :status => 1,
      :source => "MyString",
      :user => nil,
      :area => 1
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "textarea[name=?]", "question[statement]"

      assert_select "input[name=?]", "question[status]"

      assert_select "input[name=?]", "question[source]"

      assert_select "input[name=?]", "question[user_id]"

      assert_select "input[name=?]", "question[area]"
    end
  end
end
