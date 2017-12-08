require 'rails_helper'

RSpec.describe "simulation_answers/index", type: :view do
  before(:each) do
    assign(:simulation_answers, [
      SimulationAnswer.create!(
        :user => nil,
        :simulation => nil
      ),
      SimulationAnswer.create!(
        :user => nil,
        :simulation => nil
      )
    ])
  end

  it "renders a list of simulation_answers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
