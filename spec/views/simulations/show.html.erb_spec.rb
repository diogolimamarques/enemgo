require 'rails_helper'

RSpec.describe "simulations/show", type: :view do
  before(:each) do
    @simulation = assign(:simulation, Simulation.create!(
      :user => nil,
      :score => 2.5,
      :exam => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
  end
end
