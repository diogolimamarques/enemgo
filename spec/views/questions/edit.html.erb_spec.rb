require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :statement => "MyText",
      :status => 1,
      :source => "MyString",
      :user => nil,
      :area => 1
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "textarea[name=?]", "question[statement]"

      assert_select "input[name=?]", "question[status]"

      assert_select "input[name=?]", "question[source]"

      assert_select "input[name=?]", "question[user_id]"

      assert_select "input[name=?]", "question[area]"
    end
  end
end
