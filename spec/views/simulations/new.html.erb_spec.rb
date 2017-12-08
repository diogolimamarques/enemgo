require 'rails_helper'

RSpec.describe "simulations/new", type: :view do
  before(:each) do
    assign(:simulation, Simulation.new(
      :user => nil,
      :score => 1.5,
      :exam => nil
    ))
  end

  it "renders new simulation form" do
    render

    assert_select "form[action=?][method=?]", simulations_path, "post" do

      assert_select "input[name=?]", "simulation[user_id]"

      assert_select "input[name=?]", "simulation[score]"

      assert_select "input[name=?]", "simulation[exam_id]"
    end
  end
end
