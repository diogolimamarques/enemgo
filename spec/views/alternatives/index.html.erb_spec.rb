require 'rails_helper'

RSpec.describe "alternatives/index", type: :view do
  before(:each) do
    assign(:alternatives, [
      Alternative.create!(
        :statement => "MyText",
        :question => nil,
        :veracity => false
      ),
      Alternative.create!(
        :statement => "MyText",
        :question => nil,
        :veracity => false
      )
    ])
  end

  it "renders a list of alternatives" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
