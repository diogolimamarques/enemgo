require 'rails_helper'

RSpec.describe "simulation_answers/new", type: :view do
  before(:each) do
    assign(:simulation_answer, SimulationAnswer.new(
      :user => nil,
      :simulation => nil
    ))
  end

  it "renders new simulation_answer form" do
    render

    assert_select "form[action=?][method=?]", simulation_answers_path, "post" do

      assert_select "input[name=?]", "simulation_answer[user_id]"

      assert_select "input[name=?]", "simulation_answer[simulation_id]"
    end
  end
end
