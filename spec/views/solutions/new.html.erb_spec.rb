require 'rails_helper'

RSpec.describe "solutions/new", type: :view do
  before(:each) do
    assign(:solution, Solution.new(
      :statement => "MyText",
      :question => nil
    ))
  end

  it "renders new solution form" do
    render

    assert_select "form[action=?][method=?]", solutions_path, "post" do

      assert_select "textarea[name=?]", "solution[statement]"

      assert_select "input[name=?]", "solution[question_id]"
    end
  end
end
