require 'rails_helper'

RSpec.describe "simulation_answers/show", type: :view do
  before(:each) do
    @simulation_answer = assign(:simulation_answer, SimulationAnswer.create!(
      :user => nil,
      :simulation => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
