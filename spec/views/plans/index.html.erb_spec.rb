require 'rails_helper'

RSpec.describe "plans/index", type: :view do
  before(:each) do
    assign(:plans, [
      Plan.create!(
        :value => 2.5,
        :name => "Name"
      ),
      Plan.create!(
        :value => 2.5,
        :name => "Name"
      )
    ])
  end

  it "renders a list of plans" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
