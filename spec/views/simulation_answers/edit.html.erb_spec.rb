require 'rails_helper'

RSpec.describe "simulation_answers/edit", type: :view do
  before(:each) do
    @simulation_answer = assign(:simulation_answer, SimulationAnswer.create!(
      :user => nil,
      :simulation => nil
    ))
  end

  it "renders the edit simulation_answer form" do
    render

    assert_select "form[action=?][method=?]", simulation_answer_path(@simulation_answer), "post" do

      assert_select "input[name=?]", "simulation_answer[user_id]"

      assert_select "input[name=?]", "simulation_answer[simulation_id]"
    end
  end
end
