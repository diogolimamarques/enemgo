require 'rails_helper'

RSpec.describe "simulations/edit", type: :view do
  before(:each) do
    @simulation = assign(:simulation, Simulation.create!(
      :user => nil,
      :score => 1.5,
      :exam => nil
    ))
  end

  it "renders the edit simulation form" do
    render

    assert_select "form[action=?][method=?]", simulation_path(@simulation), "post" do

      assert_select "input[name=?]", "simulation[user_id]"

      assert_select "input[name=?]", "simulation[score]"

      assert_select "input[name=?]", "simulation[exam_id]"
    end
  end
end
