require 'rails_helper'

RSpec.describe "alternatives/show", type: :view do
  before(:each) do
    @alternative = assign(:alternative, Alternative.create!(
      :statement => "MyText",
      :question => nil,
      :veracity => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
