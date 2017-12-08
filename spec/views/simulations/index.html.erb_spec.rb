require 'rails_helper'

RSpec.describe "simulations/index", type: :view do
  before(:each) do
    assign(:simulations, [
      Simulation.create!(
        :user => nil,
        :score => 2.5,
        :exam => nil
      ),
      Simulation.create!(
        :user => nil,
        :score => 2.5,
        :exam => nil
      )
    ])
  end

  it "renders a list of simulations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
