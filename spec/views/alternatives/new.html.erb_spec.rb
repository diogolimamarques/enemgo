require 'rails_helper'

RSpec.describe "alternatives/new", type: :view do
  before(:each) do
    assign(:alternative, Alternative.new(
      :statement => "MyText",
      :question => nil,
      :veracity => false
    ))
  end

  it "renders new alternative form" do
    render

    assert_select "form[action=?][method=?]", alternatives_path, "post" do

      assert_select "textarea[name=?]", "alternative[statement]"

      assert_select "input[name=?]", "alternative[question_id]"

      assert_select "input[name=?]", "alternative[veracity]"
    end
  end
end
