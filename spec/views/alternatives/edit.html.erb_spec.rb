require 'rails_helper'

RSpec.describe "alternatives/edit", type: :view do
  before(:each) do
    @alternative = assign(:alternative, Alternative.create!(
      :statement => "MyText",
      :question => nil,
      :veracity => false
    ))
  end

  it "renders the edit alternative form" do
    render

    assert_select "form[action=?][method=?]", alternative_path(@alternative), "post" do

      assert_select "textarea[name=?]", "alternative[statement]"

      assert_select "input[name=?]", "alternative[question_id]"

      assert_select "input[name=?]", "alternative[veracity]"
    end
  end
end
